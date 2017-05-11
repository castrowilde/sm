counter  = 1;
for i = [100 500 700 1000]
    [errG] = geomMC(i);
    [errC] = crudeMC(i);
    [errMP] = mpMC(i);
    [errIS] = isMC(i);
    [errS] = symMC(i);
    [errAR] = arMC (i);
    Gerr(counter) = errG;
    Cerr(counter) = errC;
    MPerr(counter) = errMP;
    ISerr(counter) = errIS;
    Serr(counter) = errS;
    ARerr(counter) = errAR;
    N(counter) = i;
    counter  = counter + 1;
end

semilogx(N,Gerr,N,Cerr,N,MPerr,N,ISerr,N,Serr,N,ARerr);
grid on;
legend('geometric', 'crude','main part','importance sampling','symmetric','accept reject');
title('error comparison MC');
disp('mean geom error');
mean(Gerr)
disp('mean crude error');
mean(Cerr)
disp('mean main part error');
mean(MPerr)
disp('mean importance sampling error');
mean(ISerr)
disp('mean symmetric error');
mean(Serr)
disp('mean accept reject error');
mean(ARerr)
