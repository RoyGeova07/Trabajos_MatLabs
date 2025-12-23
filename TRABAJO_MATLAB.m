disp('TRABAJO DE ROY UMAÑA')
disp('Ejercicio 1 ');
a=[-4,6,-5;-3,-7,0;5,-2,-1];
v=[-5,4,7];

disp(rref(a,v));
disp('tiene espacio en R3')


disp('Ejercicio 2');
y=[3,-6,-5,2;7,-5,3,-2;4,-5,3,-4];
q=[-5,4,7];

disp(y);
disp(rref(y,q));
disp('\nel ejercicio 2 es linealmente independiente')


disp('Ejercicio 3')
t=[3,-5,4;4,-2,-5;-4,-5,7];
disp(rref(t));
disp('El rango de la matriz es 3')

disp('Ejercicio 4')
u1=[1,1,0,0];
u2=[2,-1,0,1];
u3=[3,-3,0,-2];
u4=[1,-2,0,-3]
disp('Bases ortogonales');
disp('V1 es: ');
disp(u1);
v2=u2-((u2*u1')/(u1*u1'))*u1
v3=u3-((u3*u1')/(u1*u1'))*u1-((u3*v2')/(v2*v2'))*v2
v4=u4-dot(u4,u1)/dot(u1,u1)*u1-dot(u4,v2)/dot(v2,v2)*v2-dot(u4,v3)/dot(v3,v3)*v3;
disp('v4 es: ')
disp(v4);

disp('Ahora vamos con las bases ortonormales')
disp("w1: ")
w1=u1/norm(u1);
disp(w1);
disp("w2: ")
w2=v2/norm(v2);
disp(w2)
w3=v3/norm(v3);
disp("w3: ")
disp(w3);
w4=v4/norm(v4);
disp("w4: ")
disp(w4);




