xi=input('Entre com o valor de xi: ');
h=input('Entre com o passo de cálculo: ');
disp('Entre com a função:');
vetor=input("log10(3.0259244794113*sqrt((14.73*10^3)^4+((14.73*10^3)/(2*0.984845115722316*3.1415926535897932384626433832795*x*47*10^-9))^2)/((14.73*10^3)^2+(1/(2*3.1415926535897932384626433832795*x*0.984845115722316*47*10^-9))^2))");
x = xi; f = evstr(vetor);
//subplot(2,1,1)
//plot(t,vetor,'r')
//disp( 'f(x)', f);
//flinha = derivat(f);
//disp('f´(x)', flinha);
//vreal = horner(flinha,xi);
//printf("Valor real da derivada em x = %f é %f\n",xi,vreal);
x = xi-h; a = evstr(vetor)
x = xi; b = evstr(vetor)
x = xi+h; c = evstr(vetor)
diferenca = 'progressiva'
dfdt = (c - b)/h;
for i=1:3
    printf("Diferença %s :\n",diferenca);
    //et = 100*abs((vreal - dfdt)/vreal) ;
    printf("Val. aprox. em x = %f é %f \n",xi,dfdt);
    //printf("Com erro relativo de %f %%\n\n",et);
    if i==1 then
        diferenca = 'regressiva';
        dfdt = (b - a)/h;
    elseif i==2 then
        diferenca = 'centrada';
        dfdt = (c - a)/(2*h);
    end
end
