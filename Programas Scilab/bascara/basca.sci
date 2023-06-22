function [x1, x2] = bascara (a,b,c)
    delta = b^2 - 4*a*c
    x1 = (-b + delta)/(2*a)
    x2 = (-b - delta)/(2*a)
endfunction
