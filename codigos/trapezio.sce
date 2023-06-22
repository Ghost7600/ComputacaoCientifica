function I=trap(a, b, fun, n)
//a é o limite inferior de integração
//b é o limite superior de integração
//n é o número de intervalos (número de pontos n+1)
//fun é a função na forma literal ou um vetor de pontos
//podemos passar apenas limite inferior, limite superior e vetor pronto
//
if argn(2)<4 then //vetor de pontos
fx = fun;
n = length(fun)-1;
else //função literal
x = linspace(a,b,n+1);
fx = evstr(fun);
end
soma = 0;
for i=2:n
soma = soma+fx(i);
end
I = (b-a)*(fx(1)+2*soma+fx(n+1))/(2*n);
endfunction
