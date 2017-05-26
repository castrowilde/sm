err = zeros(1,80);
N = zeros(1,80);
for i = 100:100:8000
    [solution,n] = Quasi_Monte_Carlo_solution(i);
    err(i/100) = abs((pi/10) - solution);
    N(i/100) = n;
end
%TODO: plot Koksma-Hlavka restriction
plot(N,err);
title('N,error plot for Quasi Monte Carlo solution');
xlabel('N');
ylabel('error');