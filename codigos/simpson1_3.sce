function I=simpson1_3(a, b, fun, n)
/*a é o limite inferior de integração
b é o limite superior de integração
n é o número de intervalos (número de pontos n+1)
fun é a função na forma literal ou um vetor de pontos
*/
if argn(2)<4 then //vetor de pontos
fx = fun;
n = length(fun)-1;
else //função literal
x = linspace(a,b,n+1);
fx = evstr(fun);
end
if modulo(n,2)~=0 then
error("o número de segmentos deve ser par");
end
soma1 = fx(n); soma2 = 0;
for i=3:2:n-1
soma1 = soma1 + fx(i-1); // fx(n) já está na soma
soma2 = soma2 + fx(i);
end
I = (b-a)*(fx(1)+4*soma1+2*soma2+fx(n+1))/(3*n);
endfunction
