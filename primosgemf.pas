program func; 

var 
    i, n, m : integer;
    primo, primo2 : boolean;

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
    write('Ingrese dos enteros positivos, n y m: ');    read(n,m);
    writeLn('Los primos gemelos entre ',n:0,' y ',m:0,' son: ');
    for i := n to m do
    begin 
        primo := EsPrimo(i);
        primo2 := EsPrimo(i+2);
        if (primo = true) and (primo2 = true) then
            writeLn(i:0, ' y ', i+2:0);
    end
end.


