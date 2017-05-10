function [ ro,theta,phi] = generate_spherical_coords_Sobol( n )
    p = sobolset(1,'Skip',1000,'Leap',50);
    %p = scramble(p,'MatousekAffineOwen');
    ro = net(p,n);
    theta = (2*pi).* p(1:n);
    phi = (pi/4).* p(1:n);
end