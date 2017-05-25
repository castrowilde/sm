function [ ro,theta,phi] = generate_spherical_coords_Halton( n )
    p = haltonset(3);
    pts = net(p,n);
    ro = pts(:,1);
    theta = (2*pi).* pts(:,2);
    phi = (pi/4).* pts(:,3);
end