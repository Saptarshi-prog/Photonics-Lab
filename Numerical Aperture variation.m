clc;
clear;
alpha1=1;
alpha2=2;
alpha3=3;
alpha4=4;
alpha5=1354;

NA1=[];NA2=[];NA3=[];NA4=[];NA5=[];
NA6=[];NA7=[];NA8=[];NA9=[];NA10=[];

n1=1.5;
n2=1.45
a=25;
delta=((n1)^2-(n2)^2)/(2*(n1)^2);

nr1=[];nr2=[];nr3=[];nr4=[];nr5=[];
nr6=[];nr7=[];nr8=[];nr9=[];nr10=[];

NA11=[];NA22=[];NA33=[];NA44=[];NA55=[];

for r=1:40
    if r<(a-1)
        
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
nr1=[1.5 nr1]; nr3=[1.5 nr3]; nr5=[1.5 nr5]; nr7=[1.5 nr7]; nr9=[1.5 nr9];

for r=1:41
    if r<(a-1)
        NA1(r) =((nr1(r))^2-n2^2)^0.5;
        NA3(r) =((nr3(r))^2-n2^2)^0.5;
        NA5(r) =((nr5(r))^2-n2^2)^0.5;
        NA7(r) =((nr7(r))^2-n2^2)^0.5;
        NA9(r) =((nr9(r))^2-n2^2)^0.5;
    else
        NA1(r)=0;
        NA3(r)=0;
        NA5(r)=0;
        NA7(r)=0;
        NA9(r)=0;
    end
end

NA2=NA1(end:-1:2);
NA4=NA3(end:-1:2);
NA6=NA5(end:-1:2);
NA8=NA7(end:-1:2);
NA10=NA9(end:-1:2);

NA11=[NA2 NA1];
NA22=[NA4 NA3];
NA33=[NA6 NA5];
NA44=[NA8 NA7];
NA55=[NA10 NA9];

radius=-40:1:40;
%radius=1:1:250;
plot(radius,NA11,'r');
hold on;
plot(radius,NA22,'b');
hold on;
plot(radius,NA33,'g');
hold on;
plot(radius,NA44,'c');
hold on;
plot(radius,NA55,'m');
xlabel('Radial distance in micrometer');
ylabel('Numerical Aperture');

legend('alpha=1','alpha=2','alpha=3','alpha=4','alpha=1354');
grid on;
