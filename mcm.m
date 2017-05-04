function [y, errmcm] = mcm(fname, a, b, N)

dim = length(a);

s = 0;

for i = 1:N
    x = a + (b-a) .* rand(1,dim);
    s = s + feval(fname, x) * prod(b-a);
end

y = s / N;

% change accordingly
errmcm = abs(exp(1) - 1 - y); % for integral (e(x))
% errmcm = abs(2-s); % for integral (1/sqrt(x))