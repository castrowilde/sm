function [y,errqmcm] = qmcmhalton(fname, a, b, N)
dim = length(a);
s = 0;
r = halton(N,dim) ;

for k = 1:N
    x = a + (b - a) .* r(k,dim) ;
    s = s + feval (fname, x) * prod(b - a);
end
y = s/N;

errqmcm = abs(exp(1) - 1 - y);
end