clear all;
fname = @(x) exp(x); % change this to the function you want to integrate
start = 100; % start position
step = 100; % step
z = 1000; % end position

k = zeros(1,z/step);

for n = start:step:z
    [s, err] = my_mcm(fname,0,1,n);
    err2(n/step) = err;
    k(n/step) = n;
    
    [y, errmcm] = mcm(fname,0,1,n);
    err3(n/step) = errmcm;
end

plot(k, err2, k, err3); % compare my_mcm and mcm
legend('my\_mcm', 'mcm');
