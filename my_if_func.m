function [ ] = my_if_func( a )
    if a < 0
        disp('Negative');
    elseif a == 0
        disp('zero')
    else
        disp('Positive');
    end
end

