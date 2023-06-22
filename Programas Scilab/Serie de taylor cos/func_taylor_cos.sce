x1 = %pi/3; x0 = %pi/4;
fx = cos(x0); i = 0; j = 0; vreal = cos(x1);
while i<=6 do
    e = abs((vreal-fx)/vreal)*100
    printf("Ordem = %d, f(x_i+1)= %.10f , erro = %.2e\n",i, fx, e);
    i=i+1;
    j=j+1;
    if j==1 then
        der = -sin(x0);
    elseif j==2 then
        der = -cos(x0);
    elseif j==3 then
        der = sin(x0);
    elseif j==4 then
        der = cos(x0);
        j = 0;
    end
    fx = fx + der*((x1-x0)^i)/factorial(i);
end
