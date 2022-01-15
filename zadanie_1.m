% Zadanie 1
%podpunkt a
A = [4 -1 1;4 -8 1;-2 1 5];
B = [7;-21;15];
%rozwiązanie za pomocą metody Jacobiego
init_val = [0;0;0];
[x1,y1,z1] = jacobi(A,B,-2,init_val);

%podpunkt b
C = [4 3 1;1 4 1;3 1 5];
D = [7;7;5.5];
%rozwiązanie za pomocą metody Jacobiego
[x2,y2,z2] = jacobi(C,D,-2,init_val);

%Sprawdzenie rozwiązań
X1 = [x1;y1;z1];
X2 = [x2;y2;z2];

X1
if A*X1 == B
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie a są prawidłowe')
else
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie a nie są prawidłowe')
end
X2
if C*X2 == D
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie b są prawidłowe')
else
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie b nie są prawidłowe')
end


%{
subplot(1,2,1)

[x,y] = meshgrid(-10:0.75:10,-10:0.75:10);
z5 = 7 - 4*x + y;
z6 = -21-4*x+8*y;
z7 = (15+2*x-y)/5;
surf(x,y,z5);
hold on;
surf(x,y,z6);
hold on;
surf(x,y,z7);
title('podpunkt a')
grid on
xlabel('x')
ylabel('y')
zlabel('z')

subplot(1,2,2)

[x,y] = meshgrid(-10:0.75:10,-10:0.75:10);
z8 = 7 - 4*x - 3*y;
z9 = 7 - x - 4*y;
z10 = (5.5-3*x-y)/5;
surf(x,y,z8);
hold on;
surf(x,y,z9);
hold on;
surf(x,y,z10);
title('podpunkt b')
grid on
xlabel('x')
ylabel('y')
zlabel('z')
%}