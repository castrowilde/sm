function [errC] = crudeMC(n_max)
% Example crude MC in Matlab

a = 0;
b = 1;
x = 0;
k = 0;
f = 0;
while (k < n_max)
    k = k + 1;
    x = a + rand() * (b-a);
    f = f + exp(x);
end

y = (b-a) * f/n_max;
Int = exp(b) - exp(a);
errC = abs(Int - y);

end
