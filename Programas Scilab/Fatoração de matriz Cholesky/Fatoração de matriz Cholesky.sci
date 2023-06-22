function x=cholesky(A, b) 
    // Fatoração de Cholesky 
    // function x = cholesly(A, b) 
    // onde x vetor solução 
    //      A é a matriz de coeficientes 
    //      b é vetor de termos independentes 
    soma = 0; 
    [m,n] = size(A); 
    if m~=n then 
        error('A deve ser uma matriz quadrada'); 
    end
    m = length(b); 
    if m~=n then 
        error('Vetor b com número incorreto de linhas.');
    end
    //Obtenção da Matriz U Fatoração de Cholesky 
    for i = 1:n 
        for j = i:n i
            if i == j then 
                for k=1:(i-1)
                    soma = soma + A(k,i)^2;
                end
                A(i,i)= sqrt(A(i,i)- soma); 
                soma = 0; 
            else 
                for k=1:(i-1) 
                    soma = soma + A(k,i)*A(k,j); 
                end 
                A(i,j)= (A(i,j)-soma)/A(i,i); 
                soma = 0; 
            end 
        end 
    end 
    disp('U',A);
    // substituição progressiva 
    for i = 1:n 
        for k=1:(i-1) 
            soma = soma + A(k,i)*x(k); 
        end 
        x(i)= (b(i)-soma)/A(i,i); 
        soma = 0; 
    end 
    disp('d',x); 
    // substituição regressiva 
    x(n)= x(n)/A(n,n); 
    for i=n-1:-1:1 
        x(i)=(x(i)-A(i,(i+1):n)*x((i+1):n))/A(i,i); 
    end
endfunction


    
