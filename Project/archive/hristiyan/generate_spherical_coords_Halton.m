function [ ro,theta,phi] = generate_spherical_coords_Halton( n )
    p = haltonset(1);
    pts = net(p,n);
    ro = pts;
    theta = (2*pi).* pts;
    phi = (pi/4).* pts;
end