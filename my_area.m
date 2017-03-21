function [ S ] = my_area( a,b,c ) %funkciq s 3 vhodni parametura - a,b,c(strani na triugulnik),1 izhoden S(lice)
    p = (a+b+c)/2; %poluperimetur
    S = sqrt(p*(p-a)*(p-b)*(p-c)); %heronova formula
end

