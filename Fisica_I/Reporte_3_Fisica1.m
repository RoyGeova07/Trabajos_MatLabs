m=0.1029;%masa en kg
g=9.81;

%fuerzas minima (N)
Fgoma=[0.5,0.7,0.6,0.6];
Fmadera=[0.2,0.2,0.2,0.2];

%angulos (grados)
ang_goma=[22,28,27,26];
ang_madera=[9,11,10,12];

%PARTE A - FRICCION ESTATICA

N=m*g;

Fmin_goma=mean(Fgoma);
Fmin_madera=mean(Fmadera);

mu_estatica_goma=Fmin_goma/N;
mu_estatica_madera=Fmin_madera/N;


%PARTE B - FRICCION CINETICA
ang_prom_goma=mean(ang_goma);
ang_prom_madera=mean(ang_madera);

mu_cinetica_goma=tand(ang_prom_goma);
mu_cinetica_madera=tand(ang_prom_madera);

%aqui se muestran los resultados
disp('RESULTADOS---------------')

fprintf('NORMAL = %.4f N\n',N)

fprintf('\nCoeficiente Estatica Goma = %.3f\n',mu_estatica_goma)
fprintf('Coeficiente Estatica Madera = %.3f\n',mu_estatica_madera)
fprintf('\nCoeficiente Cinetica Goma = %.3f\n',mu_cinetica_goma)
fprintf('Coeficiente Cinetica Madera = %.3f\n',mu_cinetica_madera)