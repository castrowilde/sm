function [ f ] = my_fib( n )

f = zeros(1,n);
f(1) = 0;
f(2) = 1;

for k=3:n
    f(k) = f(k-2)+f(k-1);
end

end

