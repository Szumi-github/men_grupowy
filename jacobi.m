function [x,y,z] = jacobi(A,B)
if size(A) ~= [3,3] | size(B) ~= [3,1]
    disp('Nieprawidłowy rozmiar tablic')
    return
elseif det(A) == 0
    disp('Wyznacznik macierzy A wynosi 0')
    return
end

U = A;
U(:,3) = 0;
U([1 2],2) = 0;
U(1,1) = 0;
U
L = A;
L(1,[2 3]) = 0;
L(2,[1 3]) = 0;
L(3,[1 2]) = 0;
L
D = A;
D(:,1) = 0;
D([2 3],2) = 0;
D(3,3) = 0;
D

X=[1;1;1]
X = -(inv(D))*(U+L)*X+inv(D)*B

end



