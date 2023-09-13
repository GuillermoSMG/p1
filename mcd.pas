program mcd;
var 
    m, n, i : integer;

begin
    write('Ingrese valores para n y m: ');  readLn(n,m);

    while (m <> 0) do
    begin
        i := m;
        m := n mod m;
        n := i;
    end;
    writeLn('El MCD es: ', n:2)
end.