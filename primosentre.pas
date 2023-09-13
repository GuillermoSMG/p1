program primos;

var 
    n, m, i, divisor, fin : integer;

begin 
    write('Ingrese dos enteros positivos, n y m: ');    readLn(n,m);
    for i := n to m do
    begin
        fin := trunc(sqrt(i));
        divisor := 2;
        while (divisor <= fin) and (i mod divisor <> 0) do 
            divisor := divisor + 1;
        if divisor > fin then
            write(i:5);
    end;
    writeLn()
end.