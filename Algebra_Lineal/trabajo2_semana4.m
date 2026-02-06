A=[8,11,-6;3,-6,-2]
b=[2,8;-4,3;11,-10]
c=[-3,3;2,-5;4,-13]
d=[8,0,-16;3,-5,9;19,2,-5]
Matriz_identidad=[1,0,0;0,1,0;0,0,1]

disp('donde se verifica que A(B+C)=AB+AC Inciso A: ');
r=b+c
r*A
h=A*b
t=A*c
disp('resultado: ');
i=h+t
disp('al final A(B+C)=AB+AC no dan la misma matriz por la propiedad de conmutatividad');
j=b*A
l=c*A
disp('resultado: al final A(B+C) es = BA+CA por la propiedad de la conmutatividad')
res=j+l



disp('Inciso B: Calcule,en caso de que sea posible,ATBT+5D');
r=A'*b'+5*d

disp('Inciso C:  CalculeD2−3D+2I3.')
respue=d*d-3*d+2*Matriz_identidad

disp('Calcule(BA)(BA)T. ¿Que caracteristicas puede reconocer en esta matriz?');
BA=b*A
IncisoC=BA*BA'



disp('EJERCICIO II');
Matriz_Planteada=[1,1,1;0.30,0.20,0.15;0,1,-1]
vector_Planteado=[600;150;100]
det(Matriz_Planteada)
inv(Matriz_Planteada)


disp('EJERCICIO III');
inversionistaz=[1,1;2,1;3,1;4,1;5,1;6,1]
inversionista_vector=[10000;14800;20350;25120;29153;34789]

AtA=inversionistaz'*inversionistaz;
disp('Invertimos (A^T * A)') 
AtA_inv=inv(AtA);
A_pinv=AtA_inv*inversionistaz';
x=A_pinv*inversionista_vector;

m = x(1);% pendiente
b = x(2);% intercepto
fprintf('m = %.6f\n', m);
fprintf('b = %.6f\n', b);
fprintf('Recta aproximada: y = %.6fx + %.6f\n', m, b);