function [ solution,n ] = Quasi_Monte_Carlo_solution2( n )
    [ro,theta,phi] = generate_quasi_spherical_coords2(n);
    [x,y,z] = generate_cartesian_coords(ro,theta,phi);
    solution = 0;
    int_fun1 = int_fun();
    for i = 1:n
        solution = solution + int_fun1(x(i),y(i),z(i));
    end
    solution = solution/n;
end
