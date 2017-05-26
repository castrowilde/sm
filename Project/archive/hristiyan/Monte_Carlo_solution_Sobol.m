function [ solution_S,n_S ] = Monte_Carlo_solution_Sobol( n_S )
    [ro,theta,phi] = generate_spherical_coords_Sobol(n_S);
    [x,y,z] = generate_cartesian_coords(ro,theta,phi);
    solution_S = 0;
    int_fun1 = int_fun();
    
    for i = 1:n_S
        solution_S = solution_S + int_fun1(x(i),y(i),z(i));
    end
    solution_S = solution_S/n_S;
end