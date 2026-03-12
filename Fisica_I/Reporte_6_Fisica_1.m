clc
clear
%DATOS DEL EXPERIMENTO
g=9.8;%gravedad

D=1.95/100; % diametro del cilindro (m)
r=D/2; % radio
M=0.0337; % masa del cilindro (kg)
Tf=0.33; % peso del cilindro fuera del agua (N)

% Alturas sumergidas (cm->m)
h=[0 1 2 3] ./100;

%Pesos
Td=[0.33 0.32 0.31 0.24];

%CALCULO DEL EMPUJE
Empuje=Tf-Td;

%AJUSTE LINEAL
model=polyfit(h,Empuje,1);

x=(0:0.01:4)./100;
ajuste=model(1)*x+model(2);

%GRAFICA EMPUJE VS ALTURA
figure
hold on
plot(h,Empuje,"o","Color",[0.8 0.4 0.3],"LineWidth",1.6)

plot(x,ajuste,"Color",[0.4 0.5 0.7],"LineWidth",1.6)

title("Empuje vs Altura Sumergida")
legend("Datos","Ajuste")

xlabel("Altura sumergida (m)")
ylabel("Empuje (N)")

hold off

%CALCULO DENSIDAD
syms dfluido
pendiente=model(1);
v_central=round(solve(dfluido*pi*(r^2)*g == pendiente,dfluido),2);

%GRAFICA DENSIDAD
figure
hold on
% linea de densidad del agua
xline(1000,'--',{'densidad del agua'});
xlabel("Densidad (kg/m^3)")

%valor experimental
x=v_central;
y=0.5;
err=30;

errorbar(x,y,err,'horizontal','*','LineWidth',2,"Color",[0.1 0.5 0.6])

legend("Valor teorico","Experimento","Location","northwest")

xlim([930 1011])
ylim([0 1])

title("Resultado experimental")

hold off