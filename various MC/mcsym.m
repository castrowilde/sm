% Example symmetric MC in Matlab
n_max = 1000;
a = 0;
b = 1;
x = 0;
k = 0;
f = 0;

while (k < n_max)
    k = k + 1;
    x = a + rand() * (b - a);
    f = f + exp(x) + exp(1-x);
end

y = 0.5 * f / n_max;
Int = exp(b) - exp(a);
err = abs(Int - y);