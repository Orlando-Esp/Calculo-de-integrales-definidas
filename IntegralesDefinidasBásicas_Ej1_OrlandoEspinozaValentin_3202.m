% Octave Script
% Title			:Integrales Definidas Básicas ej1.
% Description		:Script para desarrrollar el ejericio1 de Integrales Definidas Básicas .
% Author		:Orlando Espinoza Valentin (Orlando-Esp) espinozaorlando978@gmail.com
% Date			:20210603
% sion		        :1
% Usage			:octave> /path/Integrales Definidas Básicas,IntegralesDefinidasBásicas_Ej1_OrlandoEspinozaValentin_3202.m
% Notes			:Requiere aplicacion octave-online usar en consola preferentemente. 
%program execution page :https://octave-online.net

%Se encarga de limpiar la pantalla y las variables 
clc, clear  
%Paqueteria Symbolic
pkg load symbolic
syms t;
TFC=sqrt(t);
int(TFC)
ans = (sym)
a= 1;
b= 4;
%Velocidad en millas por hora
operacion=(2*b.^3/2./(3/2))-(2*a.^3/2./(3/2));
%Valor de la operacion 
fprintf('El valor de la velocidad (distancia/tiempo) al utilizar el T.F.C.es:%2.1f\n',operacion)
%Distancia que recorre la particula durante la segunda, tercera y cuarta hora
Distancia2=operacion*2;
fprintf('Distancia recorrida por la particula en millas durante la segunda hora:%2.1f\n',Distancia2)
Distancia3=operacion*3;
fprintf('Distancia recorrida por la particula en millas durante la 3tercera hora:%2.1f\n',Distancia3)
Distancia4=operacion*4;
fprintf('Distancia recorrida por la particula en millas durante la cuarta hora:%2.1f\n',Distancia4)
DistanciaTotal=operacion+Distancia2+Distancia3+Distancia4;
fprintf('Total de distancia(millas/hora) que rrecorrio la particula (de t=1 a t=4)es:%2.1f\n',DistanciaTotal)
%Numero de intervalos y rectangulos 
a = 1;
b = 4;
n = 20;
%Longitud de la base.
base = (b-a)/n;
%Funcion definida.
x =a:base:(b-base);
%Altura
altura=(2*x);
%Valor de cada uno de los rectangulos.
area = base*altura;
x2 = linspace(1,4,20);
y2 = (2*x);
%Fin e inicio de los intervalos.
xa = linspace(1,4,20);
yab = (2*x);
g = bar(xa,yab,'histc');
hold on
%Realiza la grafica de la funcion 
plot(x2,y2);
%Titulo de la grafica
title("Ejericicio No.1");
axis tight
