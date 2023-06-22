function [x] = media(vetor)
    n = length(vetor)
    x = 0; count = 0
    for  i =1:n
        if(modulo(i,2) == 0)
            x = x + vetor(i)
            count = count +1
        end
        x = x + vetor(i)
        count = count +1
    end
    x = x/count
endfunction
