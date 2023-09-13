program primosgemelos;

var 
    n, m, i, divisor, fin, nexti, divisor2, fin2 : integer;

begin 
    write('Ingrese dos enteros positivos, n y m: ');    readLn(n,m);
    writeLn('Los primos gemelos entre ',n:0,' y ',m:0,' son: ');
    for i := n to m do
    begin
        fin := trunc(sqrt(i));
        divisor := 2;
        while (divisor <= fin) and (i mod divisor <> 0) do 
            divisor := divisor + 1;
            nexti := i + 2;
            fin2 := trunc(sqrt(nexti));
            divisor2 := 2;
        while (divisor2 <= fin2) and (nexti mod divisor2 <> 0) do 
            divisor2 := divisor2 + 1;
        if (divisor > fin) and (divisor2 > fin2) then
            writeLn(i:0,' y ', nexti:0);
    end;
    writeLn()
end.