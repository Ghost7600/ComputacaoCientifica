clear();
q = 2d-5; Q = 2d-5; e = 8.9d-12; a = 0.85; F =1.25
x = linspace(0,1,1000000);
fm = 1/(4*%pi*e)* (q*Q*x)./((x^2 + a^2)^(3/2)) - F
xlabel('Distância (m)');
ylabel('f(m)');
plot2d(x,fm,style=[color('blue4')]);
xgrid
