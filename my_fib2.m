function [ f ] = my_fib2( n )
if n <= 0
    disp('bad input')
    f = [];
elseif n == 1
    f = 0;
elseif n == 2
    f = [0 1];
else 
    f(1) = 0;
    f(2) = 1;
    for k = 3:n
        f(k) = f(k-1)+f(k-2);
    end
end

end

