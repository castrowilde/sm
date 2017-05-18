n = 250;
x = halton(n, 55);

subplot(4,2,1);
plot(x(:,2),x(:,3),'.');
title('halton 2 vs. 3');

subplot(4,2,2);
plot(x(:,3),x(:,4),'.');
title('halton 3 vs. 4');

subplot(4,2,3);
plot(x(:,7),x(:,8),'.');
title('halton 7 vs. 8');

subplot(4,2,4);
plot(x(:,21),x(:,22),'.');
title('halton 21 vs. 22');

subplot(4,2,5);
plot(x(:,26),x(:,27),'.');
title('halton 26 vs. 27');

subplot(4,2,6);
plot(x(:,48),x(:,49),'.');
title('halton 48 vs. 49');

subplot(4,2,7);
plot(x(:,53),x(:,54),'.');
title('halton 53 vs. 54');

subplot(4,2,8);
plot(x(:,54),x(:,55),'.');
title('halton 54 vs. 55');