function x = halton(n, s)
p = primes(s*6);
p = p(1:s);
x = [];
for k = 1:s
    x = [x corput(n,p(k))'];
end
end