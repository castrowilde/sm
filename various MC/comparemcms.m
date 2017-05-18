fname = @(x) exp(x);
a = 0;
b = 1;
N = 4;
y11 = zeros(1,N);
y22 = zeros(1,N);
counter = 1;
for i = [500 1000 1500 2000]
    [y1] = qmcm(fname, a, b, i);
    [y2] = mcm_1(fname, a, b, i);
    y11(counter) = y1;
    y22(counter) = y2;
    N(counter) = i;
    counter  = counter + 1;
end

plot(N,y11,N,y22);
legend('qmcm','mcm');