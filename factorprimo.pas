program primos;

type    
    enteroPositivo = 0 .. maxint;

var
    n, fp, aux : integer;

function FactorPrimo (n : enteroPositivo) : enteroPositivo;
var 
    factor : integer;
begin
    if n = 1 then
        FactorPrimo := 1
    else begin 
        factor := 2; 
        while (n mod factor <> 0) do
            factor := factor + 1;
        FactorPrimo := factor;
    end; 
end;

begin 
    write('Entrada: ');   read(n);
    while (n <> 0) do 
    begin
        writeln(n:0);
        write('Resultado: ');
        fp := FactorPrimo(n);
        write(fp:0);
        aux := n div fp;
        while (aux <> 1) do 
        begin 
            fp := FactorPrimo(aux);
            write('*', fp:0);
            aux := aux div fp;
        end;
        writeln();
        write('Entrada: ');
        read(n);
    end
end.