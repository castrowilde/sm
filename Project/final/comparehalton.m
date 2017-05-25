% compare own halton set function with haltonset from matlab

n = 250; % how many points
x = halton(n, 55);
x1 = haltonset(55);
x2 = net(x1,250);

subplot(8,2,1);
plot(x(:,2),x(:,3),'.');
title('own halton 2 vs. 3');

subplot(8,2,3);
plot(x(:,3),x(:,4),'.');
title('own halton 3 vs. 4');

subplot(8,2,5);
plot(x(:,7),x(:,8),'.');
title('own halton 7 vs. 8');

subplot(8,2,7);
plot(x(:,21),x(:,22),'.');
title('own halton 21 vs. 22');

subplot(8,2,9);
plot(x(:,26),x(:,27),'.');
title('own halton 26 vs. 27');

subplot(8,2,11);
plot(x(:,48),x(:,49),'.');
title('own halton 48 vs. 49');

subplot(8,2,13);
plot(x(:,53),x(:,54),'.');
title('own halton 53 vs. 54');

subplot(8,2,15);
plot(x(:,54),x(:,55),'.');
title('own halton 54 vs. 55');

subplot(8,2,2);
plot(x2(:,2),x2(:,3),'.');
title('halton 2 vs. 3');

subplot(8,2,4);
plot(x2(:,3),x2(:,4),'.');
title('halton 3 vs. 4');

subplot(8,2,6);
plot(x2(:,7),x2(:,8),'.');
title('halton 7 vs. 8');

subplot(8,2,8);
plot(x2(:,21),x2(:,22),'.');
title('halton 21 vs. 22');

subplot(8,2,10);
plot(x2(:,26),x2(:,27),'.');
title('halton 26 vs. 27');

subplot(8,2,12);
plot(x2(:,48),x2(:,49),'.');
title('halton 48 vs. 49');

subplot(8,2,14);
plot(x2(:,53),x2(:,54),'.');
title('halton 53 vs. 54');

subplot(8,2,16);
plot(x2(:,54),x2(:,55),'.');
title('halton 54 vs. 55');