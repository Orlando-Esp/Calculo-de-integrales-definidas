% Octave Script
% Title			:Integrales Definidas Básicas ej2.
% Description		:Script para desarrrollar el ejericio2 de Integrales Definidas Básicas.
% Author		:Orlando Espinoza Valentin (Orlando-Esp) espinozaorlando978@gmail.com
% Date			:20210603
% sion		        :1
% Usage			:octave> /path/Teorema fundamental del calculo,TeoremaFundamentaldelCalculo_Ej1_OrlandoEspinoza_3202.m
% Notes			:Requiere aplicacion octave-online usar en consola preferentemente. 
%program execution page :https://octave-online.net

%Se encarga de limpiar la pantalla y las variables.
clc, clear  
%Paqueteria Symbolic
pkg load symbolic
syms t; 
TFC=1.197*t.^2+58.68 ;
int(TFC)
ans = (sym)
a= 0;
b= 7;
%Velocidad pies sobre segundo.
operacion=(2*7.^3)-(2*0.^3);
%Valor de la operacion.
fprintf('Velocidad distancia sobre tiempo es:%2.1f\n',operacion)
%Distancia que recorre el auto mientras se estaba frenando en pies sobre segundo 
v2=6.71;
v1=58.67;
t=7;
%Se cambian las letras por numeros 
dr=(v1+v2/2)*t;
conversion=dr*0.3048000;
fprintf('Distancia que rrecorre el vehiculo en metros mientras se estaba frenando es:%2.1f\n',conversion)
%Numero de intervalos y rectangulos 
a = 0;
b = 7;
n = 20;
%Longitud de la base.
base = (b-a)/n;
%Funcion definida.
x =a:base:(b-base);
%Altura
altura=(57.473*x.^2);
%Valor de cada uno de los rectangulos.
area = base*altura;
x2 = linspace(0,7,20);
y2 = (57.473*x.^2);
%Fin e inicio de los intervalos.
xa = linspace(0,7,20);
yab = (57.473*x.^2);
g = bar(xa,yab,'histc');
hold on
%Realiza la grafica de la funcion.
plot(x2,y2);
%Titulo de la grafica. 
title("Ejericicio No.2");
axis tight
