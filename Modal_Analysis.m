clc;
clear;
b=0:0.01:1;
V=2;
LHS1=[]; LHS2=[];
RHS1=[]; RHS2=[];
l=1;
LHS1=(V*(1-b).^0.5).*(besselj(l-l,(V.*(1-b).^0.5)))./besselj(l,(V.*(1-b).^0.5));
RHS1= -(V*(b).^0.5).*(besselk(l-1,(V.*(b).^0.5)))./(besselk(l,(V.*(b).^0.5)));

LHS2=(V*(1-b).^0.5).*(besselj(l,(V.*(1-b).^0.5)))./besselj(0,(V.*(1-b).^0.5));
RHS2= (V*(b).^0.5).*(besselk(1,(V.*(b).^0.5)))./(besselk(0,(V.*(b).^0.5)));

subplot(2,1,1)
plot(b,LHS1,'r');
hold on;
plot(b,RHS1,'b');
title('For l=1');
grid on;

subplot(2,1,2)
plot(b,LHS2,'r');
hold on;
plot(b,RHS2,'b');
title('For l=0');
grid on;