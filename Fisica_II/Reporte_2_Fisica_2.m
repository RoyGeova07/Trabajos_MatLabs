% DATOS
Longitud_promedio=1.715;
tiempo_promedio=12.59;
% PERIODO
T=tiempo_promedio/5;
% GRAVEDAD
gravedad=(4*pi^2*Longitud_promedio)/(T^2);
ERROR=0.2;
hold on
xline(9.8,'-','g')
x=gravedad;
y=20;
errorbar(x,y,ERROR,'horizontal','*','LineWidth',2)
xlabel('Aceleración Gravitacional')
title('Resultado experimental')

legend('Valor teorico','Experimento')

xlim([8 12])

hold off

disp(gravedad)