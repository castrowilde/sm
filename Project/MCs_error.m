start = 1;
step = 1;
stop = 100;

err = zeros(1,stop/step);
N = zeros(1,stop/step);

n = 5000; % points for MCM

for k = start : step : stop
    [ solution, n ] = Monte_Carlo_solution( n )
    err(k/step) = abs((pi/10) - solution);
    N(k/step) = k;
end

plot(N,err);

disp('mean error:');
mean(err)

disp('% error:');
mean(err) / (pi/10) * 100
