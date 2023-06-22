// para um algorítimo ter certeza de n números significativos, o erro percentual tem que ser menor que 0.5*10^2-n
ea = 1
funct = 0
x = 0.5
n = 0
// portanto para fazer e^0.5 ter 3 casas decimais de precisão e <= (0.5)*10^2-n -> e <= 0.05%
s = input("entre com a quantidade de algarismos significativos de precisão: ")
while ea > (0.5)*10^(2-s)
      funct_a = funct
      funct = funct + (x^n)/(factorial(n))
      et = abs((-funct+1.64872127))/(1.64872127)*100
      ea = abs((funct-funct_a))/(funct)*100
      printf("\ncom %d elementos o erro percentual total é: %f, erro percentual relativo: %f", n+1,et,ea)
      n = n+ 1
end
disp(funct)
