function [ s, err ] = normalmcm( fname1, fname2, n )

% fname1 = @(rho) rho^4;
% fname2 = @(psi) (sin(psi)) * (cos(psi));
% fname3 = @(xxx) xxx;

a1 = 0;
b1 = 1;

a2 = 0;
b2 = pi/4;

y1 = a1 + (b1-a1) .* rand(1,n);
y2 = a2 + (b2-a2) .* rand(1,n);

s = 0;
s1 = 0;
s2 = 0;

for i = 1:n
    s1 = s1 + fname1(y1(i));
    s2 = s2 + fname2(y2(i)) * pi/4;
end

s = (s1 / n) * (s2 / n) * 2 * pi; % total answer
% s11 = s1 / n % just for s1
% s22 = s2 / n % just for s2

err = abs(pi/10 - s);

end