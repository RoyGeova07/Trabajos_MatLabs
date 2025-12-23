disp('Roy - 22411312')

% Declaramos el vector w
w=[2, 2*sqrt(3)]

% Hacemos uso de la funcion quiver
quiver(0,0,w(1),w(2))

% Agregamos un mallado a la grafica
grid on

% Hacemos uso del comando hold on
hold on

% Hacemos uso de la funcion plot
plot(w(1),w(2),'r*')

% Asignamos un titulo a nuestra grafica
title('Representacion geometrica del vector w = [2, 2*sqrt(3)]')

% Etiquetamos los ejes x, y
xlabel('x')
ylabel('y')
