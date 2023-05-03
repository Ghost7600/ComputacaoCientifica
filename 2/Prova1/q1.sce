// Prova 1 2023/2 - Kenner Marqueti Couto
// Questão 1
//exec('path\gaussi.sci',-1)
clc
A=[-3,0,0,1,0,0,1,1;0,4,-1,0,-2,-1,0,0;0,1,-3,1,0,0,0,1;1,0,1,-3,1,0,0,0;0,2,0,1,-4,0,1,0;1,0,0,0,0,-3,1,1;1,0,0,0,1,1,-3,0;1,0,1,0,0,1,0,-3]
B=[1;1;0;0;0;0;0;0]
disp(A)
disp(B)
res=gaussi(A,B)
// Realizou-se analise nodal no circuito, obtendo as matrizes acima, porém devido a erros de analise de circuitos por parte do aluno o sistema é indeterminado.
