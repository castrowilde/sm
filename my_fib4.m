function [ f ] = my_fib4( n )
    tic();
    A=[0 1;1 1];
    y = A^n*[1;0];
    f = y(1);
    t(n)=toc();
    disp(t(n));
end