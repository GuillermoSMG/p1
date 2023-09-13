program carga;

const
   N = 10;
   
type
   arreglo = array [1..N] of Integer;
   
var 
    a : arreglo;
    i : integer;
    
begin 
    for i := 1 to N do
    begin
        write('Ingrese un valor para el indice ',i:0, ': ');
        read(a[i]);
    end;
    write(a[1]:0);
    for i := 2 to N do 
        write(', ',a[i]:0);
    writeLn()
end.