% Compare computation time for 500000 4*4 matrices
% Taehyeong Kim 2023-02-27
% th_kim@pusan.ac.kr
% det  : MATLAB built-in function
% time1: time of det
% det4 : Using our new formula
% time2: time of det4

clc; clear; close all
n = 500000;
time1 = zeros(n,1);
time2 = zeros(n,1);

for i = 1:n
    rng(i)
    A = rand(4);
    tic;
    sol = det(A);
    time1(i) = toc;
    tic;
    pred = det4(A);
    time2(i) = toc;
end
%% Plotting
close all
M = max([time1(100:end);time2(100:end)]);
figure
set(gcf,'color','w');
hold on
plot(time1(100:end),'b-')
plot(time2(100:end),'r-')
xlabel("Number of matrix","FontSize",18)
ylabel("CPU Time","FontSize",18)
legend('det','det4',"FontSize",14)
grid on
ylim([0,1e-5])

sum(time1>time2)
sum(time1>time2)/n*100

mean(time1(100:end))
mean(time2(100:end))