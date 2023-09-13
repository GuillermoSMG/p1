program ordarr;

const 
    N = 10;

type 
    arreglo = array [1..N] of integer;

var 
    o : arreglo;
    i, min, siguiente, j : integer;
    ordenado : boolean;

begin 
    for i := 1 to N do
    begin
        write('Ingrese un valor para el indice ',i:0, ': ');
        read(o[i]);
    end;
    i := 1;
    while (i <= N-1) and (o[i] < o[i+1]) do
        i := i + 1;
    if i = N then
        ordenado := true
    else 
        ordenado := false;
    writeLn(ordenado)
end.    