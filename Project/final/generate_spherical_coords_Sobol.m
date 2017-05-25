function [ ro,theta,phi] = generate_spherical_coords_Sobol( n )
    sobol_set = sobolset(3,'Skip',1000,'Leap',123);
%     points = scramble(sobol_set,'MatousekAffineOwen');
    points = net(sobol_set,n);    
    ro = points(:,1);
    theta = (2*pi).* points(:,2);
    phi = (pi/4).* points(:,3);
end