% Zadanie 1 - MEN grupowy

%podpunkt a
A = [4 -1 1;4 -8 1;-2 1 5];
B = [7;-21;15];
%rozwiązanie za pomocą metody Jacobiego
[x1,y1,z1] = jacobi(A,B);

%podpunkt b
C = [4 3 1;1 4 1;3 1 5];
D = [7;7;5.5];
%rozwiązanie za pomocą metody Jacobiego
[x2,y2,z2] = jacobi(C,D);

%Sprawdzenie rozwiązań
X1 = [x1;y1;z1];
X2 = [x2;y2;z2];



if A*X1 == B
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie a są prawidłowe')
else
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie a nie są prawidłowe')
end

if A*X2 == B
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie a są prawidłowe')
else
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie a nie są prawidłowe')
end

if C*X3 == D
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie b są prawidłowe')
else
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie b nie są prawidłowe')
end

if C*X4 == D
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie b są prawidłowe')
else
    disp('wyniki obliczone metodą iteracyjną Jacobiego w podpunkcie b nie są prawidłowe')
end

subplot(1,2,1)

[x,y] = meshgrid(-10:0.75:10,-10:0.75:10);
z5 = (8-x-2*y)/3;
z6 = 3-2*x-y;
z7 = (5+x-y)/2;
surf(x,y,z5);
hold on;
surf(x,y,z6);
hold on;
surf(x,y,z7)
title('podpunkt a')
grid on
xlabel('x')
ylabel('y')
zlabel('z')

subplot(1,2,2)

[x,y] = meshgrid(-10:0.75:10,-10:0.75:10);
z8 = (2.2132-x)/3.1223;
z9 = 3.021-4.122*x-12.123*y;
z10 = (5.8921-x+y)/2;
surf(x,y,z8);
hold on;
surf(x,y,z9);
hold on;
surf(x,y,z10)
title('podpunkt b')
grid on
xlabel('x')
ylabel('y')
zlabel('z')