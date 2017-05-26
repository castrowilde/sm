clear all;

fname1 = @(rho) rho^4;
fname2 = @(psi) (sin(psi)) * (cos(psi));
fname3 = @(xxx) xxx;

i = [100 1000 5000 10000 50000 100000];
N = length(i);
mcm_s = zeros(1,N);
mcm_err = zeros(1,N);
qmcm_h_s = zeros(1,N);
qmcm_h_err = zeros(1,N);
qmcm_s_err = zeros(1,N);
qmcm_s_s = zeros(1,N);
actual(1:N) = pi/10;
counter = 1;
x = zeros(1,N);
m = 20; % how many iterations for the normal mcm

for k = i
%         [ solution, err ] = normalmcm(fname1, fname2, k );
        [ solution, err ] = getmeannormalmcm(fname1, fname2, k, m);
        [ solution_H, err_H ] = haltonmcm (fname1, fname2, k );
        [ solution_S, err_S ] = sobolmcm (fname1, fname2, k );
        mcm_err(counter) = err;
        qmcm_h_err(counter) = err_H;
        qmcm_s_err(counter) = err_S;
        mcm_s(counter) = solution;
        qmcm_h_s(counter) = solution_H;
        qmcm_s_s(counter) = solution_S;    
        x(counter) = k;
        counter = counter + 1;
end

subplot(2,2,1);
semilogx(x,actual,'-k',x,mcm_s,'green',x,qmcm_h_s,'red',x,qmcm_s_s,'blue','LineWidth',2);
legend('exact','mcm','qmcm halton','qmcm sobol');
xlabel('points'),ylabel('solution');
title('QMCM Halton, QMCM Sobol, MCM - Solutions');
grid on;

subplot(2,2,2);
semilogx(x,mcm_err,'green',x,qmcm_h_err,'red',x,qmcm_s_err,'blue','LineWidth',2);
legend('mcm','qmcm halton','qmcm sobol');
xlabel('points'),ylabel('error');
title('QMCM Halton, QMCM Sobol, MCM - Errors');
grid on;

subplot(2,2,3);
semilogx(x,actual,'-k',x,qmcm_h_s,'red',x,qmcm_s_s,'blue','LineWidth',2);
legend('exact','qmcm halton','qmcm sobol');
xlabel('points'),ylabel('solution');
title('QMCM Halton, QMCM Sobol, exact - Solutions');
grid on;

subplot(2,2,4);
semilogx(x,qmcm_h_err,'red',x,qmcm_s_err,'blue','LineWidth',2);
legend('qmcm halton','qmcm sobol');
xlabel('points'),ylabel('error');
title('QMCM Halton, QMCM Sobol - Errors');
grid on;

% get means (for all points, not per point!)
MCM = [mean(mcm_err);mean(mcm_s)];
MCM_Halton = [mean(qmcm_h_err);mean(qmcm_h_s)];
MCM_Sobol = [mean(qmcm_s_err);mean(qmcm_s_s)];
Actual = [0;pi/10];
Rnames = {'mean error';'mean solution'};
t = table(MCM,MCM_Halton,MCM_Sobol,Actual,'RowNames',Rnames);
t