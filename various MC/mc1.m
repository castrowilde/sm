% Example crude MC in Matlab
n_max = 1000;
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
t(4) = y;
Int = exp(b) - exp(a);
t(5) = Int;
err = abs(Int - y);
t(6) = err;