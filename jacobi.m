function [x,y,z] = jacobi(A,B,precision)
if size(A) ~= [3,3] | size(B) ~= [3,1]
    disp('Nieprawidłowy rozmiar tablic')
    return
elseif det(A) == 0
    disp('Wyznacznik macierzy A wynosi 0')
    return
end


L = A;
L(:,3) = 0;
L([1 2],2) = 0;
L(1,1) = 0;

D = A;
D(1,[2 3]) = 0;
D(2,[1 3]) = 0;
D(3,[1 2]) = 0;

U = A;
U(:,1) = 0;
U([2 3],2) = 0;
U(3,3) = 0;

lambda = -(inv(D))*(U+L);
%sprawdzenie czy metoda będzie zbieżna
if max(abs(eig(lambda)))<1
    disp("metoda jest zbieżna")
else
    disp("metoda nie jest zbieżna")
end

X=[0;0;0];
k=0;
if precision == -2
%pętla iteracyjna dla epsilon = 10^(-2)
while k<200
Xd=X;
X = -(inv(D))*(U+L)*Xd+inv(D)*B;
k = k+1;
end
end

if precision == -4
%pętla iteracyjna dla epsilon = 10^(-4)
while k<200
Xd=X;
X = -(inv(D))*(U+L)*Xd+inv(D)*B;
k = k+1;
end
end

if precision == -10
%pętla iteracyjna dla epsilon = 10^(-10)
while k<200
Xd=X;
X = -(inv(D))*(U+L)*Xd+inv(D)*B;
k = k+1;
end
end

x = X(1);
y = X(2);
z = X(3);
end



