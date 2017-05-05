solutions = zeros(1,10);
N = zeros(1,10);
for i = 100:100:1000
    [solution,n] = Monte_Carlo_solution(i);
    solutions(i/100) = solution;
    N(i/100) = n;
end

plot(N,solutions);
title('N,error plot');
xlabel('N');
ylabel('error');
