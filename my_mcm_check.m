clear all;
fname = @(x) exp(x);
start = 100; % start position
step = 100; % step
z = 1000; % how many points to check

k = zeros(1,z/step);

for n = start:step:z
    [s, err] = my_mcm(fname,0,1,n);
    err2(n/step) = err;
    k(n/step) = n;
    
    [y, errmcm] = mcm(fname,0,1,n);
    err3(n/step) = errmcm;
end

plot(k, err2, k, err3);
legend('my\_mcm', 'mcm');