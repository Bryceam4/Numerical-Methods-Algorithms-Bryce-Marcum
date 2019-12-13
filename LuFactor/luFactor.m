function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix
  [m, n] = size(A);
  L=eye(n); 
  P=eye(n); 
  U=A;
  if m ~= n
      error('must be square matrix')
  end
    for y=1:m-1
        pivot=max(abs(U(y:m,y)))
        for j=y:m
            if(abs(U(j,y))==pivot)
                in=j
                break;
            end
        end
        U([y,in],y:m)=U([in,y],y:m)
        L([y,in],1:y-1)=L([in,y],1:y-1)
        P([y,in],:)=P([in,y],:)
        for j=y+1:m
            L(j,y)=U(j,y)/U(y,y)
            U(j,y:m)=U(j,y:m)-L(j,y)*U(y,y:m)
        end
        
    end
  
end

