program cuadrados;

var 
    n, cuadrado, i : integer;

begin
    write('Ingrese un valor para n: ');
    read(n);
    for i := 1 to (n div 2 + 1) do
    begin 
        cuadrado := sqr(i);
        writeLn(cuadrado);
    end
end.





