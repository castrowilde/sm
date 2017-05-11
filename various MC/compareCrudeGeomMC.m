for i = 1000:1000:10000
    [errG] = geomMC(i);
    [errC] = crudeMC(i);
    [errMP] = mpMC(i);
    [errIS] = isMC(i);
    [errS] = symMC(i);
    Gerr(i/1000) = errG;
    Cerr(i/1000) = errC;
    MPerr(i/1000) = errMP;
    ISerr(i/1000) = errIS;
    Serr(i/1000) = errS;
    N(i/1000) = i;
end

loglog(N,Gerr,N,Cerr,N,MPerr,N,ISerr,N,Serr);
legend('geometric', 'crude','main part','importance sampling','symmetric');
title('error comparison MC from 1000 to 10000 points');
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