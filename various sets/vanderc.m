function [ Fb ] = vanderc( n, b )
Fb = 0;
k = n-1;
b1 = 1;
while k > 0
    b1 = b1 / b;
    a = rem(k, b);
    Fb = Fb + a * b1;
    k = floor(k / b);
end
end