function [ x,y,z ] = generate_cartesian_coords( ro,theta,phi )
    n = length(ro);
    x = zeros(1,n);
    y = zeros(1,n);
    z = zeros(1,n);
    for i = 1:n
        x(i) = ro(i)*sin(phi(i))*cos(theta(i));
        y(i) = ro(i)*sin(phi(i))*sin(theta(i));
        z(i) = ro(i)*cos(phi(i));
    end
end

