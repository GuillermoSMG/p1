program funcprimos1;

var 
    valor : integer;
    primo : boolean;

function EsPrimo( valor : integer) : boolean;
var 
    fin, divisor : integer;

begin 
    fin := trunc(sqrt(valor));
    divisor := 2;
    while (divisor <= fin) and (valor mod divisor <> 0) do
        divisor := divisor + 1;
    if (divisor <= fin) then 
        EsPrimo := false
    else 
        EsPrimo := true;
end;
begin 
    write('Ingrese un entero mayor a cero: ');  read(valor);
    primo := EsPrimo(valor);
    write(valor:0, ' es primo: ',primo);
    writeLn()
end.