clc
clear
% Periodos experimentales se divide con las 10 oscilaciones
y=[3.20,4,4.09,4.16,4.47,4.56]/10;
% sqrt de las masas en kg
x=sqrt([50,60,70,80,90,100]/1000);
% Ajuste lineal sin intercepto
model=fitlm(x,y,'intercept',false);
% Pendiente
m=model.Coefficients.Estimate;
% Error de la pendiente
sigma_m=model.Coefficients.SE;
% Calculo de K
k=(4*pi^2)/m^2;
% Incertidumbre de K
sigma_k=abs(-8*pi^2*m^(-3)*sigma_m);
% Funcion del ajuste
R_ajuste=@(d) m*d;
% ===== Grafica del ajuste =====
figure
hold on
grid on
plot(x,y,'*')
fplot(R_ajuste,[0,0.35])
title('Ajuste Lineal para el Resorte de 3 N/m')
xlabel('\surdm (kg^{1/2})')
ylabel('Periodo T (s)')
hold off
% ===== Grafica de discrepancia =====
figure
hold on
xline(3,'--')
errorbar(k,5,sigma_k,'horizontal','o','LineWidth',2)
xlabel('Valor de K')
xlim([2,20])
grid on
hold off