function [allFb] = funcallFb(n,b)
allFb = zeros(1,n);
tic
for k = 1:n
    [Fb] = vanderc(k,b);
    allFb(1,k) = Fb;
end
toc
end