% Compare precision of determinant of 4*4 matrices
% between MATLAB built-in function det and det4
% Taehyeong Kim 2023-02-27
% th_kim@pusan.ac.kr
% det  : MATLAB built-in function
% time1: time of det
% det4 : Using our new formula
% time2: time of det4

clc; clear;
format long
%% The determinant must be -33
A = [4    10     7     6
     5     1     9    10
     9     6     7     8
     2     2     3     3];

num2str(det(A), 1000)
det4(A)
num2str(det(A) - det4(A), 1000)
%% The determinant must be integer
A = [10000001    10000001    10000001    10000000
     10000001    10000000    10000000    10000001
     10000000    10000000    10000001    10000001
     10000000    10000001    10000000    10000001];

num2str(det(A), 1000)
det4(A)
num2str(det(A) - det4(A), 1000)
%% Compare for 10000 random integer matrices
clc; clear;
n = 10000;
Dt = 0; Df = 0; Derr = 0;
D4t = 0; D4f = 0;
for i = 1:n
    rng(i)
    A = randi([-10 10],4,4);
    D = det(A);
    D4 = det4(A);
    if round(D)==D
        Dt = Dt + 1;
    else
        Df = Df + 1;
        Derr = Derr + abs(round(D)-D);
    end
    if round(D4)==D4
        D4t = D4t + 1;
    else
        D4f = D4f + 1;
    end
end
formatSpec1 = 'Built-in function calculates %d intergers and %d non-integer! \n';
fprintf(formatSpec1,Dt,Df)
formatSpec2 = '%8.2f percentage \n';
fprintf(formatSpec2,Dt/n*100)

formatSpec1 = 'Our formula calculates %d intergers and %d non-integer! \n';
fprintf(formatSpec1,D4t,D4f)
formatSpec2 = '%8.2f percentage \n';
fprintf(formatSpec2,D4t/n*100)
