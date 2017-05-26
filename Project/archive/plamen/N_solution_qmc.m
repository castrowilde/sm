solutions = zeros(1,80);
N = zeros(1,80);
for i = 100:100:8000
    [solution,n] = Quasi_Monte_Carlo_solution(i);
    solutions(i/100) = solution;
    N(i/100) = n;
end

plot(N,solutions);
title('N,solution plot for Quasi Monte Carlo solution');
xlabel('N');
ylabel('solution');