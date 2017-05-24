clear all;
fname = @(x) exp(x);
a = 0;
b = 1;
N = 7; % length of i
mcm_s = zeros(1,N);
mcm_err = zeros(1,N);
qmcm_h_s = zeros(1,N);
qmcm_h_err = zeros(1,N);
qmcm_s_err = zeros(1,N);
qmcm_s_s = zeros(1,N);

actual(1:N) = exp(1) - 1;
counter = 1;

for i = [10000 20000 50000 100000 200000 500000 1000000]
    [y1,err1] = qmcmhalton(fname, a, b, i);
    [y2,err2] = mcm(fname, a, b, i);
    [y3,err3] = qmcmsobol(fname, a, b, i);
    qmcm_h_s(counter) = y1;
    mcm_s(counter) = y2;
    qmcm_h_err(counter) = err1;
    mcm_err(counter) = err2;
    qmcm_s_s(counter) = y3;
    qmcm_s_err(counter) = err3;
    x(counter) = i;
    counter  = counter + 1;
end

subplot(2,2,1);
semilogx(x,qmcm_h_s,x,mcm_s,x,qmcm_s_s,'LineWidth',2);
legend('qmcm halton','mcm','qmcm sobol');
xlabel('points'),ylabel('solution');
title('QMCM Halton, QMCM Sobol, MCM - Solutions');
grid on;

subplot(2,2,2);
semilogx(x,qmcm_h_err,x,mcm_err,x,qmcm_s_err,'LineWidth',2);
legend('qmcm halton','mcm','qmcm sobol');
xlabel('points'),ylabel('error');
title('QMCM Halton, QMCM Sobol, MCM - Errors');
grid on;

subplot(2,2,3);
semilogx(x,qmcm_h_s,x,actual,x,qmcm_s_s,'LineWidth',2);
legend('qmcm halton','actual','qmcm sobol');
xlabel('points'),ylabel('solution');
title('QMCM Halton, QMCM Sobol, actual - Solutions');
grid on;

subplot(2,2,4);
semilogx(x,qmcm_h_err,x,qmcm_s_err,'LineWidth',2);
legend('qmcm halton','qmcm sobol');
xlabel('points'),ylabel('error');
title('QMCM Halton, QMCM Sobol - Errors');
grid on;