//exemplo 4
e0= 8.9d-12; F=1.25; q = 2d-5; a=0.85;
f = (1/(4*%pi*e0)*(q^2*x)./(x^2+a^2)^(3/2))-F;
plot(x,f,'b*');
xgrid;
