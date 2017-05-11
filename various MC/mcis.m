% Example importance sampling MC
n_max = 1000;
a = 0;
b = 1;
x = 0;
k = 0;
f = 0;

while (k < n_max)
    k = k + 1;
    x = sqrt(1 + 3 * rand()) - 1;
    f = f + exp(x) / (1 + x);
end

y = 1.5 * f / n_max;
Int = exp(b) - exp(a);
errIS = abs(Int - y);