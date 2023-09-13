program raices;

var 
    n, numero, divisor, fin, i : integer;
    esPrimo : boolean;

begin 
write('Ingrese un entero positivo: ');
read(n);
numero := 1;
for i := 1 to n do
begin
    repeat 
        numero := numero + 1;
        divisor := 2;
        fin := Trunc(Sqrt(numero));
        While (divisor <= fin) AND (numero mod divisor <> 0) do
            divisor := succ(divisor);
        If (divisor > fin) then
        begin
            esPrimo := True;
            writeLn(numero:0, ' ', sqrt(numero):2:2);
        end
        else
            esPrimo := False
    until esPrimo;
end
end.