function [ int_fun ] = int_fun(  )

int_fun = @(x,y,z) z*sqrt(x^2+y^2+z^2);

end

