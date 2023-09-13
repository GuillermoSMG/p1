program primos;

var 
    numero, divisor, fin : integer;

begin
    readLn(numero);
    fin := trunc(sqrt(numero));
    divisor := 2;
    while (divisor <= fin) and (numero mod divisor <> 0) do 
        divisor := divisor + 1;
    
    if divisor <= fin then
        writeLn('El numero ',numero,' no es primo')
    else 
        writeLn('El numero ',numero,' es primo')
end.        