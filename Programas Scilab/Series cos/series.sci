    function fx=series(fun, x,vreal, term) 
    if ~isdef('term') then //outra maneira: if argn(2)< 4 then 
        term = 5 // term = 5 end // 
    end 
    fx_old = 0; fx = 0;n = 0; 
    printf("Termo fx et %% erro %%\n"); 
    while n < term do 
        fx = fx + evstr(fun); 
        erro = abs((fx - fx_old)/fx)*100; 
        errot = abs((vreal - fx)/vreal)*100;
        printf("%-5d %-10f %-10f %-10f\n",n+1,fx,errot,erro); 
        fx_old = fx; 
        n = n + 1; 
     end 
     end

