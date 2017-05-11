function [ ro,theta,phi] = generate_spherical_coords( n )
    ro = rand(1,n);
    theta = (2*pi).*rand(1,n);
    phi = (pi/4).*rand(1,n);
end

