clc;
clear;
alpha1=1;
alpha2=2;
alpha3=3;
alpha4=4;
alpha5=1268;

n1=1.5;
n2=1.45;
a=25;
delta=((n1)^2-(n2)^2)/(2*(n1)^2);
nr1=[]; nr2=[]; nr3=[]; nr4=[]; nr5=[];
nr6=[]; nr7=[]; nr8=[]; nr9=[];nr10=[];
nr11=[];nr22=[];nr33=[];nr44=[];nr55=[];

for r=1:40
    if r<(a)
        
        nr1(r)=n1*(1-2*delta*((r/a)^alpha1))^0.5;
        nr3(r)=n1*(1-2*delta*((r/a)^alpha2))^0.5;
        nr5(r)=n1*(1-2*delta*((r/a)^alpha3))^0.5;
        nr7(r)=n1*(1-2*delta*((r/a)^alpha4))^0.5;
        nr9(r)=n1*(1-2*delta*((r/a)^alpha5))^0.5;
    else
        nr1(r)=n1*(1-2*delta)^0.5;
        nr3(r)=n1*(1-2*delta)^0.5;
        nr5(r)=n1*(1-2*delta)^0.5;
        nr7(r)=n1*(1-2*delta)^0.5;
        nr9(r)=n1*(1-2*delta)^0.5;
    end
end
nr2=nr1(end:-1:1);
nr4=nr3(end:-1:1);
nr6=nr5(end:-1:1);
nr8=nr7(end:-1:1);
nr10=nr9(end:-1:1);

nr11=[nr2 1.5 nr1];
nr22=[nr4 1.5 nr3];
nr33=[nr6 1.5 nr5];
nr44=[nr8 1.5 nr7];
nr55=[nr10 1.5 nr9];

radius=-40:1:40;
%radius=1:1:250;
plot(radius,nr11,'r','linewidth',2);
hold on;
plot(radius,nr22,'b','linewidth',2);
hold on;
plot(radius,nr33,'g','linewidth',2);
hold on;
plot(radius,nr44,'c','linewidth',2);
hold on;
plot(radius,nr55,'m','linewidth',2);
xlabel('Radial distance in micrometer');
ylabel('Refractive index profile');
ylim([1.43 1.53]);
legend('alpha=1','alpha=2','alpha=3','alpha=4','alpha=1268');
title('Refractive Index Profile over Radial Distance for Graded Index Fiber');
grid on;
