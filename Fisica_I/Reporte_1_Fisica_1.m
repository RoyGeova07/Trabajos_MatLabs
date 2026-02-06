%Datos experimentales
m=39.5;%masa promedio (g)
d=1.925;%diametro (cm)
h=5.9;%altura (cm)

%aqui los errores instrumentales
m_error=0.05;% g
d_error=0.01;% cm
h_error=0.05;% cm

%Densidad experimental (cilindro):rho=m/(pi*(d/2)^2*h)=4m/(pi*d^2*h)
rho_exp=(4*m)/(pi*d^2*h);%g/cm^3

%Derivadas parciales (propagacion de errores)
dm=4/(pi*d^2*h);
dd=-8*m/(pi*d^3*h);
dh=-4*m/(pi*d^2*h^2);

% Propagacion de errores (incertidumbre de rho)
sigma_rho=sqrt((dm*m_error)^2+(dd*d_error)^2+(dh*h_error)^2);

%Resultados
fprintf('Densidad experimental: %.4f ± %.4f g/cm^3\n',rho_exp,sigma_rho);

%Precision
precision=(1-sigma_rho/rho_exp)*100;
fprintf('Precision: %.2f %%\n',precision);

%Valor real (aluminio)
rho_real=2.70; %g/cm^3

% "Significancia" (z-score: cuantas sigmas de diferencia)
significancia=abs(rho_real-rho_exp)/sigma_rho;
fprintf('Significancia (|real-exp|/sigma): %.2f\n',significancia);

%aqui se hace el Grafico de discrepancia
figure;
hold on;grid on;

%aqui se hace la linea vertica del valor aceptado
xline(rho_real,'--r','LineWidth',1.2,'DisplayName','Valor Aceptado');

%punto experimental con barra de error horizontal
y0=1;%me sirve para ubicar el punto en el eje y
errorbar(rho_exp,y0,0,0,sigma_rho,sigma_rho,'o','MarkerSize',6,'LineWidth',1.5,'DisplayName','Experimento');

%etiquetas y titulo
title('Grafico de Discrepancia','FontSize',22,'FontWeight','bold');
xlabel('Densidad (g/cm^3)');
yticks([]);%me sirve para ocultar marca en y
ylim([0.6 1.4]);%aqui deja espacio vacio vertical 

%ajuste automatico del rango en x
xmin=min([rho_exp-4*sigma_rho,rho_real])-0.05*abs(rho_real);
xmax=max([rho_exp+4*sigma_rho,rho_real])+0.05*abs(rho_real);
xlim([xmin,xmax]);

%aqui texto vertical del valor aceptado, cerca de la linea roja
text(rho_real+0.01*(xmax-xmin),1.25,'Valor aceptado','Color','r','Rotation',90,'HorizontalAlignment','left','FontSize',10)

%leyenda en esquina superior izquierda
legend('Location','northwest');

