function [s, err] = my_mcm(fname, a, b, n)

y = a + (b-a) .* rand(n);

s = 0;

for i = 1:n
    s = s + fname(y(i));
end

s = s/n;

% change accordingly
err = abs(exp(1)- 1 - s); % for integral (e(x))
% err = abs(2-s); % for integral (1/sqrt(x))

end

