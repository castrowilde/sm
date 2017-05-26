function [s, err] = getmeannormalmcm (fname1, fname2, n, m )

mean_sol = zeros(1,m);
mean_err = zeros(1,m);
counter = 1;

for i = 1:m
    [ solution, err ] = normalmcm(fname1, fname2, n );
    mean_sol(counter) = solution;
    mean_err(counter) = err;
    counter = counter + 1;
end

s = mean(mean_sol);
err = mean(mean_err);
end
    
