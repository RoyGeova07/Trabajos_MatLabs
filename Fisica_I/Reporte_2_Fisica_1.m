%Datossz
x=[0.254,0.254,0.254,0.254];%distancia en metros, para todos es igual

%tiempo en segundos de los 4
Eyli=[0.033,0.024,0.020,0.020];
Roy=[0.033,0.025,0.021,0.020];
Justin=[0.042,0.030,0.026,0.026];
Sophia=[0.042,0.031,0.026,0.026];

%vector suave para graficar
tv=linspace(0,0.05,100);

%funcion para graficar para evitar copiar y pegar el mismo codig 3 veces xd

function graficar(t,x,tv,nombre)
    
    %aqui ajuste cuadratico: x=at^2+bt+c
    model=polyfit(t,x,2);

    %funcion de la posicion
    funcion=model(1)*tv.^2+model(2)*tv+model(3);

    %POSICION VS TIEMPO
    figure
    hold on
    plot(t,x,"*","LineWidth", 2)
    plot(tv,funcion,"LineWidth",2)
    title("Posicion vs tiempo - "+nombre)
    legend("Datos","Ajuste cuadratico","Location","northwest")
    xlabel("Tiempo (s)")
    ylabel("Posicio (m)")
    grid on
    hold off
    
    %VELOCIDAD VS TIEMPO 
    %derivada de la posicion: v(t)=2at+b
    v=2*model(1)*tv+model(2);
    
    figure
    plot(tv,v,"LineWidth",2)
    title("Velocidad vs Tiempo - "+nombre)
    xlabel("Tiempo (s)")
    ylabel("Velocidad m/s")
    grid on
    
    %ACELERACION VS TIEMPO
    %Segunda derivada: a(t)=2a (constante)
    a=2*model(1);
    acel=a*ones(size(tv));
    
    figure 
    plot(tv,acel,"LineWidth",2)
    title("Aceleracion vs Tiempo - "+nombre)
    xlabel("Tiempo (s)")
    ylabel("Aceleracion (m/s^2)")
    grid on


end

graficar(Eyli,x,tv,"Eyli")
graficar(Roy,x,tv,"Roy")
graficar(Justin,x,tv,"Justin")
graficar(Sophia,x,tv,"Sophia")