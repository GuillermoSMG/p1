program valores;

const 
    N = 10;

type
    arreglo = array [1..N] of integer;

var 
    cant, i, V : integer;
    enteros : arreglo;

function Cantidad(V : integer; enteros : arreglo):integer;
var i, Cant : integer;
begin
    Cant := 0;
    for i := 1 to N do
    begin
        if (enteros[i] mod V) = 0 then
            Cant := Cant + 1;
    end;
    Cantidad := Cant;
end;

begin
for i := 1 to N do
    begin
        write('Ingrese un valor para el indice ',i:0, ': ');
        read(enteros[i]);
    end;
write('Ingrese el valor V: ');
read(V);
cant := Cantidad(V, enteros);
writeLn('La cantidad de multiplos de ', V:0, ' es : ',cant:0)
end.