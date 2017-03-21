function [ f ] = my_recur_fib( n )
    if n <= 0
        disp('bad input')
        f = [];
    elseif n == 1
        f = 0;
    elseif n == 2
        f = 1;
    else 
        f = my_recur_fib(n-1)+my_recur_fib(n-2);
    end

end

