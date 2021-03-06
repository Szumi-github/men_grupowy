function [outputArg1,outputArg2] = MojEuler(E,w0,A,x0)
%MOJEULER Summary of this function goes here
%   Detailed explanation goes here
syms x(t) w(t) E A w0 V

eq1(t) = diff(x,t) == V;
eq2(t) = diff(V,t) == -2*E*w0*V - w0^2*x - (w^2 - w0^2)*A*sin(w*t)



outputArg1 = inputArg1;
outputArg2 = inputArg2;
end

