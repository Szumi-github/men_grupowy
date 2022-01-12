function [x,y,z] = jacobi(A,B)
if size(A) ~= [3,3] | size(B) ~= [3,1]
    disp('Nieprawidłowy rozmiar tablic')
    return
elseif det(A) == 0
    disp('Wyznacznik macierzy A wynosi 0')
    return
end
A
B
L = A;
L(:,3) = 0;
L([1 2],2) = 0;
L(1,1) = 0;
L
D = A;
D(1,[2 3]) = 0;
D(2,[1 3]) = 0;
D(3,[1 2]) = 0;
D
U = A;
U(:,1) = 0;
U([2 3],2) = 0;
U(3,3) = 0;
U

X=[1;1;1];
k=0;
while k<200
Xd=X;
X = -(inv(D))*(U+L)*Xd+inv(D)*B;
k = k+1;
end

x = X(1)
y = X(2)
z = X(3)
end



