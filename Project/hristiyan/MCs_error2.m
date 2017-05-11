start = 1000; % starting number of points
step = 1000; % change in points, start = step for readability of plot
stop = 50000; % ending number of points

% allocating space
err = zeros(1,stop/step);
err_H = zeros(1,stop/step);
err_S = zeros(1,stop/step);
sol = zeros(1,stop/step);
sol_H = zeros(1,stop/step);
sol_S = zeros(1,stop/step);
N = zeros(1,(stop-start)/step);

% loop through all the methods
for k = start : step : stop
%     [ solution, n ] = Monte_Carlo_solution( k );
    [ solution_H, n ] = Monte_Carlo_solution_Halton ( k );
    [ solution_S, n ] = Monte_Carlo_solution_Sobol ( k );
%     err(k/step) = (pi/10) - solution;
    err_H(k/step) = (pi/10) - solution_H;
    err_S(k/step) = (pi/10) - solution_S;
%     sol(k/step) = solution;
    sol_H(k/step) = solution_H;
    sol_S(k/step) = solution_S;    
    N(k/step) = n;
end

% plot

subplot(2,2,1);
% plot(N,err,N,err_H,N,err_S);
% legend('MCM','MCM Halton','MCM Sobol');
loglog(N,err_H,N,err_S);
grid on;
legend('MCM Halton','MCM Sobol');
title(['Error with ' num2str(start) ' to ' num2str(stop) ' points, step ' num2str(step)]);

subplot(2,2,2);
% plot(N,sol,N,sol_H,N,sol_S);
% legend('MCM','MCM Halton','MCM Sobol');
loglog(N,sol_H,N,sol_S);
legend('MCM Halton','MCM Sobol');
grid on;
title(['Solution with ' num2str(start) ' to ' num2str(stop) ' points, step ' num2str(step)]);

subplot(2,2,3);
% plot(N,err_H,N,err_S);
loglog(N,err_H,N,err_S);
grid on;
legend('MCM Halton','MCM Sobol');
title(['Error with ' num2str(start) ' to ' num2str(stop) ' points, step ' num2str(step)]);

subplot(2,2,4);
% plot(N,sol_H,N,sol_S);
loglog(N,sol_H,N,sol_S);
grid on;
legend('MCM Halton','MCM Sobol');
title(['Solution with ' num2str(start) ' to ' num2str(stop) ' points, step ' num2str(step)]);

%table
MCM = [mean(err);mean(sol)];
MCM_Halton = [mean(err_H);mean(sol_H)];
MCM_Sobol = [mean(err_S);mean(sol_S)];
Actual = [0;pi/10];
Rnames = {'mean error';'mean solution'};
t = table(MCM,MCM_Halton,MCM_Sobol,Actual,'RowNames',Rnames);
t
