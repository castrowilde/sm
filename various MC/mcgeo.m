% Example geometric MC in Matlab
n_max = 1000;
a = 0;
b = 1;
x = 0;
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

t = zeros(1,6);

y = c * f / n_max;
t(1) = y;
Int = exp(b) - exp(a);
t(2) = Int;
err = abs(Int - y);
t(3) = err;