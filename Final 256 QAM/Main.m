%256
M = 256;
%valores
x = (0:M-1)';

tabla_verdad=decimalToBinaryVector(x,log2(M));

modulacion=qammod(x,M,'gray');

tabla_verdad=[tabla_verdad,modulacion];

grafica=[];

for a = 1:n
    t=0:0.001:1;
    thetha=rad2deg(angle(modulacion(a)));
    angulo=(thetha*pi)/180;
    f=abs(modulacion(a))*sin(2*pi*t+angulo);
    drawnow
    grafica=[grafica,f];
end

plot(grafica)