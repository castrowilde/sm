function [errG] = geomMC(n_max)
% Example geometric MC in Matlab
a = 0;
b = 1;
k = 0;
f = 0;
c = exp(1);

while (k < n_max)
    k = k+1;
    x1 = a + rand() * (b-a);
    x2 = a + rand() * (b-a);
    if ((c * x2) < exp(x1) )
        f = f + 1;
    end
end

y = c * f / n_max;
Int = exp(b) - exp(a);
errG = abs(Int - y);
end