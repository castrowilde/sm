function [ solution_H,n_H ] = Monte_Carlo_solution_Halton( n_H )
    [ro,theta,phi] = generate_spherical_coords_Halton( n_H );
    [x,y,z] = generate_cartesian_coords(ro,theta,phi);
    solution_H = 0;
    int_fun1 = int_fun();
    
    for i = 1:n_H
        solution_H = solution_H + int_fun1(x(i),y(i),z(i));
    end
    solution_H = solution_H/n_H;
end