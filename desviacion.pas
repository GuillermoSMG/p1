program desvi;

var 
    numero, promedio, desviacion, sumanumeros, cuadrados, numasumar : real;
    cantidadnum : integer; 

begin
    read(numero);
    cantidadnum := 0;
    sumanumeros := 0;
    cuadrados := 0;
    
    while (numero >= 0) do
    begin 
        cantidadnum := cantidadnum + 1;
        cuadrados := cuadrados + (sqr(numero));
        numasumar := numero;
        read(numero);
        sumanumeros := sumanumeros + numasumar;
    end;  
    if cantidadnum <> 0 then
    begin
        promedio := sqr(sumanumeros / cantidadnum);
        desviacion := sqrt((cuadrados / cantidadnum) - (promedio));
        writeLn('La desviacion estandar es: ',desviacion:2:2);
    end
end.
