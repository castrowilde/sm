err = zeros(1,10);
N = zeros(1,10);
for i = 100:100:1000
    [solution,n] = Monte_Carlo_solution(i);
    err(i/100) = abs((pi/10) - solution);
    N(i/100) = n;
end

plot(N,err);
title('N,error plot');
xlabel('N');
ylabel('error');
