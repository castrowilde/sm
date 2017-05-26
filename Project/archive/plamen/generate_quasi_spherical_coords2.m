function [ ro,theta,phi ] = generate_quasi_spherical_coords2( n )
    %TODO:Implement sobol_set generator(can't use the soblset())
    sobol_set = sobolset(1);
    points = net(sobol_set,n);
    ro = points;
    theta = (2*pi).*points;
    phi = (pi/4).*points;
end

