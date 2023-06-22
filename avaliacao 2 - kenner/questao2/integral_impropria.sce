function I = p_medio(a,b,fun,n)
//calcula a integral 
//a é o limite inferior de integração
//b é o limite superior de integração
//n é o número de intervalos = número de pontos n
//fun é a função na forma literal ou um vetor de pontos
//
//t(1) = ti; y(1,:)=y0; i =1;ta=ti

//definindo variaveis e condições iniciais
n1=n;

step = (b-a)/(n);
//fstep = a+(step/2);

px=2;
soma=0;
vx = linspace (a,b,2*n+1);
//disp(vx);
I = vx;
// inicio do processo somatório dos pontos médios
while px < 2*n+1 do
    x=vx(px);
    soma=soma+ evstr(fun);
    px=px+2;
end

result=soma*step;

I=result;

endfunction
