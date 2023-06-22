 xn = 0, x = 1, erro=100;
 n_sig = 4 
 es = 0.5*10^(2-n_sig); // condição de parada relativa % 
 a = input("Entre com um numero real positivo:") 
 while erro >= es do 
 xn = (x + a/x)/2 
 erro = abs((xn - x)/xn)*100
 x = xn
 printf("Valor calculado = %.6f com erro relativo = %.6f %%\n",xn,erro) 
 end 
 printf("\nValor exato = %.6f\nValor calculado = %.6f ",sqrt(a),xn)
