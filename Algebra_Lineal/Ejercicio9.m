disp('Roy - 22411312')


u=[2,-1,4]

%hacemos uso de la funcion quiver3
quiver3(0,0,0,u(1),u(2),u(3))

%agregamos un mallado a la grafica
grid on

%hacemos uso del comando hold on
hold on

%hacemos uso de la funcion plot3
plot3(u(1),u(2),u(3),'r*')

%asignamos un titulo a nuestra grafica 

title('Representacion geometrica del vector u=2i-j+4k')

%etiquetamos los ejes x,y,z
xlabel('x');
ylabel('y');
zlabel('z');
