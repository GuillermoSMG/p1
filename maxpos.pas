program maxpos;

const
   N = 10;
   
type
   arreglo = array [1..N] of Integer;
   
var 
    a : arreglo;
    i, indice : integer;
    
begin 
    for i := 1 to N do
    begin
        write('Ingrese un valor para el indice ',i:0, ': ');
        read(a[i]);
    end;
    indice := 1;
    for i := 2 to N do
        if a[i] > a[indice] then
            indice := i;
    writeLn(indice:5)
end.