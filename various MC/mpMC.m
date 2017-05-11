function [errMP] = mpMC(n_max)
%  Example main part MC in Matlab
a = 0;
b = 1;
x = 0;
k = 0;
f = 0;
h = 0.5;

while (k < n_max)
    k = k + 1;
    x = a + rand() * (b - a);
    f = (exp(x) - x) + f;
end

y = h + (b - a) * f / n_max;
Int = exp(b) - exp(a);
errMP = abs(Int - y);
end