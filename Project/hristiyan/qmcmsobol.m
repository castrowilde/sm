function [y,errqmcm] = qmcmsobol(fname, a, b, N)
dim = length(a);
s = 0;
r1 = sobolset(dim);
r = net(r1,N);

for k = 1:N
    x = a + (b - a) .* r(k) ;
    s = s + feval (fname, x) * prod(b - a);
end
y = s/N;

errqmcm = abs(exp(1) - 1 - y);
end