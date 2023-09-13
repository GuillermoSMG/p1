program descomposicion;
var
    numero, n, val, numinicial : integer;

begin
    write('Ingrese un natural: '); readLn(numero);
    numinicial := numero;
    n := 0;
    while ((numero mod 2) = 0) do 
    begin
        n := n + 1;
        numero := numero div 2;
    end;
    val := numero;
    writeLn(numinicial:1, ' = ':3, '2':2,'^':2, n:2, '*':2, val:2)
end.
     

    



