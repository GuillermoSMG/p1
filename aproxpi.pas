program aproxpi;

var 
    x, y, distancia, cuadrado, probabilidadCirculo, aproximacion, areaCuadrado  : real;
    dardos, i : integer;

begin
    write('Ingrese un entero positivo: ');  read(dardos);
    
    probabilidadCirculo := 0;
    areaCuadrado := 0.25;
    cuadrado := dardos;
    randomize();
    for i := 1 to dardos do
    begin
        x := random();
        y := random();
        distancia := sqrt((sqr(x - 0.5)) + (sqr(y - 0.5)));
        if distancia <= 0.5 then
            probabilidadCirculo := probabilidadCirculo + 1
    end;
    probabilidadCirculo := probabilidadCirculo / cuadrado;
    aproximacion := probabilidadCirculo / areaCuadrado;
    writeLn(aproximacion:0:5)
end.