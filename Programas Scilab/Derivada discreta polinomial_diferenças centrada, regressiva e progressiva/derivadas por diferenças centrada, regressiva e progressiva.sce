xi=input('Entre com o valor de xi: ');
h=input('Entre com o passo de cálculo: ');
disp('Entre com os coef da f. polinomial entre ');
vetor=input(' no formato [a0 a1 . . . an]:');
f = poly(vetor,'x','c');
disp( 'f(x)', f);
flinha = derivat(f);
disp('f´(x)', flinha);
vreal = horner(flinha,xi);
printf("Valor real da derivada em x = %f é %f\n",xi,vreal);
a = horner(f,xi-h)
b = horner(f,xi)
c = horner(f,xi+h)
diferenca = 'progressiva'
dfdt = (c - b)/h;
for i=1:3
    printf("Diferença %s :\n",diferenca);
    et = 100*abs((vreal - dfdt)/vreal) ;
    printf("Val. aprox. em x = %f é %f \n",xi,dfdt);
    printf("Com erro relativo de %f %%\n\n",et);
    if i==1 then
        diferenca = 'regressiva';
        dfdt = (b - a)/h;
    elseif i==2 then
        diferenca = 'centrada';
        dfdt = (c - a)/(2*h);
    end
end
