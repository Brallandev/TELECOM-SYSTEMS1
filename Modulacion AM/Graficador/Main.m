
fc=10e6;
fm=1e6;

t=0:(1/fc)/100:3*(1/fm);

% VAM=(1+(cos(2*pi*100e3*t))).*(4*cos(2*pi*1e6*t));
VAM=1.58*cos(2*pi*(10e6)*t)+(0.71/2)*cos(2*pi*(9e6)*t)+(0.71/2)*cos(2*pi*11e6*t);
Arriba=0.7*cos(2*pi*1e6*t)+1.575;
Abajo=-0.7*cos(2*pi*1e6*t)-1.575;
plot(t,VAM)
ylabel("V")
xlabel("s")
hold on
plot(t,Arriba)
plot(t,Abajo)
grid on

print('-dpng','-r300',"grafica")