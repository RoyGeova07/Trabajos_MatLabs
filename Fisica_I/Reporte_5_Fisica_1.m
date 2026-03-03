clc
clear

g=9.81;%gravedad
h=0.033;% desnivel (m)

%====================================================
%                 CILINDRO MACIZO
%====================================================

m1=0.105; % kg          
vi1=0;              
vf1=0.66525; % m/s    

Ei1=m1*g*h;
Ef1=(1/2)*m1*vf1^2;

Error1=abs(Ei1-Ef1)*100/Ei1;
Cumplimiento1=100-Error1;

%====================================================
%                 CILINDRO HUECO
%====================================================

m2=0.0228;% kg         
vi2=0;              
vf2=0.8945; % m/s    

Ei2=m2*g*h;
Ef2=(1/2)*m2*vf2^2;

Error2=abs(Ei2-Ef2)*100/Ei2;
Cumplimiento2=100-Error2;

%====================================================
%                 MOSTRAR RESULTADOS
%====================================================

fprintf('\n=============================================\n')
fprintf('           RESULTADOS FINALES\n')
fprintf('=============================================\n')

fprintf('\n----- CILINDRO MACIZO -----\n')
fprintf('Energia Inicial (Ei): %.6f J\n',Ei1)
fprintf('Energia Final (Ef): %.6f J\n',Ef1)
fprintf('Error porcentual: %.2f %%\n',Error1)
fprintf('Porcentaje de cumplimiento: %.2f %%\n',Cumplimiento1)

fprintf('\n----- CILINDRO HUECO -----\n')
fprintf('Energia Inicial (Ei): %.6f J\n',Ei2)
fprintf('Energia Final (Ef): %.6f J\n',Ef2)
fprintf('Error porcentual: %.2f %%\n',Error2)
fprintf('Porcentaje de cumplimiento: %.2f %%\n',Cumplimiento2)

fprintf('\n=============================================\n')