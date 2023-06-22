function [ye]=splinesc(x, y, xe,d1,d2) //argumentos de retorno modificados p ex da prova
    /* onde o y(a), b, c, d são vetores com coeficientes das (n-1) cubicas naturais 
    ye é o valor da variável dependente em xe
    x é o vetor dos pontos amostrados da variável independente
    y é o vetor dos pontos amostrados da variável dependente */
    n = length(x);
    if n ~= length(y) then
        error("vetores x e y com dimenções diferentes");
    end
    // cálculo das diferenças finitas
    for i = 1:n-1
        h(i) = x(i+1)-x(i);
        ddf(i) = (y(i+1)-y(i))/h(i);
    end
    A = zeros(n-2, n-2); //monta A
    f = zeros(n-2,1); //monta f
    //Gerar a matriz A e o vetor coluna f 
    for i = 1:n-2 
        for j = 1:n-2 
            if i == j then 
                A(i,j) = 2*(h(i)+h(i+1)); 
            elseif j == i+1 then
                A(i,j) = h(j); 
            elseif i == j+1 then 
                A(i,j) = h(i); 
            end
            if i==1 then 
                if j==i then
                    A(i,j)=2*(d1);
                end
                if j==i+1 then
                    A(i,j)=(d1);
                end
            elseif i== (n-2) then
                if i==j then
                    A(i,j)=2*(d2);
                elseif j==(i-1) then
                    A(i,j)=(d2);
                end
            end
        end 
        f(i) = 3*(ddf(i+1)-ddf(i)); 
    end
    c = zeros (n, 1);
    c(2:n-1,1) = A\f; 
    for i=1:n-1
        d(i) = (c(i+1)-c(i))/(3*h(i)); 
        b(i) = ddf(i)- (h(i)/3)*(2*c(i)+c(i+1)); 
        //descobrindo em qual segmento está o ponto a ser 
        // interpolado 
        if (xe > x(i)) & (xe < x(i+1)) then 
            j = i;
        end 
    end
    k = xe - x(j);
    ye = y(j) + b(j)*k + c(j)*k^2 + d(j)*k^3;
    //construindo as splines
    for j=1:n-1
        xx = linspace(x(j), x(j+1), 1000);
        k = xx-x(j);
        yy = y(j) + b(j)*k + c(j)*k .^2 + d(j)*k .^3;
        plot2d(xx, yy);
    end
    ylabel("Splines");
    xlabel("x");
xgrid; endfunction
