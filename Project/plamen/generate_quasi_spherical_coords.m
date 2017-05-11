function [ ro,theta,phi ] = generate_quasi_spherical_coords( n )
    %TODO:Implement halton_set generator(can't use the haltonset())
    halton_set = haltonset(1);
    points = net(halton_set,n);
    ro = points;
    theta = (2*pi).*points;
    phi = (pi/4).*points;
end