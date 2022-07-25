function [resultado,QAM] = Modulador(Orden,valores)
%MODULADOR Summary of this function goes here
%   Detailed explanation goes here

M = Orden;

x = valores;

tabla_verdad=decimalToBinaryVector(x,log2(M));


modulacion=qammod(x,M);

modulacion=rot90(modulacion);

% tabla_verdad=horzcat(tabla_verdad,modulacion);

grafica=[];

for a = 1:numel(valores)
    t=0:0.001:1;
    thetha=angle(modulacion(a));
    f=abs(modulacion(a))*sin(2*pi*t+thetha);
    grafica=[grafica,f]; 
end

figure
scatterplot(modulacion)
title('Constelation Diagram')

figure
plot(grafica)
title('Waveform result')  

resultado=tabla_verdad;
QAM=modulacion;
end

