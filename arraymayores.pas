program mayores;

const
   N = 10;
   
type
   arreglo = array [1..N] of Integer;
   
var 
    a : arreglo;
    i, mayor, cantidad : integer;
    
begin 
    cantidad := 0;
    for i := 1 to N do
    begin
        write('Ingrese un valor para el indice ',i:0, ': ');
        read(a[i]);
    end;
    read(mayor);
    for i := 1 to N do 
    begin
        if a[i] > mayor then
            cantidad := cantidad + 1;
    end;
    writeLn('La cantidad de valores mayores a ',mayor:0,' es: ',cantidad:0)
end.
    