clear all
clc
hold off
filename = 'C:\Users\brall\Documents\2021-1\Sistemas_de_telecomunicaciones\Matlab\Guia Muestreo\A.mp3';
info = audioinfo(filename)
[cuervo,FS]= audioread(filename);
sound(cuervo,FS)

subplot(2,1,1)
plot(cuervo(:,1))


cuervo_filtrado=lowpass(cuervo,400,FS,'Steepness',0.99);
lowpass(cuervo,400,FS,'Steepness',0.99)
% cuervo_filtrado = bandpass(cuervo,[117 4000],FS);

sound(cuervo_filtrado,FS)

%Filtrado por vocales
vocal=bandpass(cuervo_filtrado,[800 1200],FS);
bandpass(cuervo_filtrado,[800 1200],FS)
sound(vocal,FS)