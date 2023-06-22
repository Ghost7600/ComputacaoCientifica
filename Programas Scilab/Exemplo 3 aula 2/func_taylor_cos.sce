x = 0.5
fx = [1.2, -0.25, -0.5, -0.15, -0.1]
fx_ = poly(fx, 'x','c')
fx_linha = derivat(fx_)
fx_2_linhas_ = derivat(fx_linha)
h_r = horner(fx_2_linhas_,x)

disp("a derivada do polinômio:", fx_2_linhas_)
disp(h_r)

// calculos para as derivadas h = 0.5
h = 0.5

fx_0 = horner(fx_,x)
fx_1 = horner(fx_,x+h)
fx__1 = horner(fx_,x-h) 

fx_2_linhas_discreto = (fx_1 - 2*fx_0 + fx__1)/(h^2)


disp("a derivada do polinômio discreto:", fx_2_linhas_discreto)
disp("erro: ", 100*(h_r - fx_2_linhas_discreto)/(h_r),"%")


// calculos para as derivadas h = 0.25
h = 0.25

fx_0_025 = horner(fx_,x)
fx_1_025 = horner(fx_,x+h)
fx__1_025 = horner(fx_,x-h) 

fx_2_linhas_discreto_025 = (fx_1_025 - 2*fx_0_025 + fx__1_025)/(h^2)
disp("a derivada do polinômio discreto 0.25 :", fx_2_linhas_discreto_025)

disp("erro: ", 100*(h_r - fx_2_linhas_discreto_025)/(h_r),"%")
