all_err = zeros(1,10);
all_sol = zeros(1,10);

for l = 1:10
    i = [100];
    counter = 1;
    for k = i
        [ solution, n ] = Monte_Carlo_solution( k );
        x(counter) = k;
        counter = counter + 1;
    end
    all_err(l) = (pi/10) - solution;
    all_sol(l) = solution;
end