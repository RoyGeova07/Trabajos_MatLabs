% Datos experimentales
Fd=[0.17,0.20,0.26,0.40]; % Fuerza en N
l=[0.20,0.16,0.12,0.08]; % Brazo en m
% Variable independiente
x=1 ./ l;
% Regresion lineal
p=polyfit(x,Fd,1); % p(1)=pendiente,p(2)=intercepto
% Recta ajustada
x_fit=linspace(min(x), max(x), 100);
Fd_fit=polyval(p, x_fit);
%Parametros fisicos 
g=9.81; % m/s^2
X=0.06; % posicion fija del portapesas en metros 
M_real=0.050; %masa real utilizada en kg 
%Calculo de masa experimental
m_exp=p(1)/(g*X);
% Discrepancia
discrepancia=abs(M_real-m_exp);
%Mostrar resultados
fprintf('Pendiente m = %.4f\n',p(1));
fprintf('Masa experimental = %.4f kg\n',m_exp);
fprintf('Discrepancia = %.4f kg\n',discrepancia);

%Grafico comparativo
figure;
bar([M_real,m_exp])
set(gca,'xticklabel',{'Masa real','Masa experimental'})
ylabel('Masa (kg)')
title(sprintf('Comparación de masas - Discrepancia = %.4f kg',discrepancia))
grid on;

%Grafico de regresion
figure;
scatter(x,Fd,'filled', 'DisplayName', 'Datos experimentales')
hold on;
plot(x_fit, Fd_fit,'r','LineWidth',2,'DisplayName','Recta ajustada')
plot(M_real*g*X, '--k','DisplayName','Valor teorico M·g·X')
xlabel('1/l (m^{-1})')
ylabel('F_d (N)')
title('Regresión lineal: F_d vs. 1/l')
legend('Location', 'best')
grid on