program multiplosfunc;

const 
    ultimo = (-1);

var 
    m, n : integer;
    esMultiplo : boolean;

function multiplos(m, n : integer) : boolean;
{*m y n <> 0*}
begin
        if ((m mod n) = 0) or ((n mod m) = 0) then
            multiplos := true
        else 
            multiplos := false;
end;

begin
    write('Ingrese m y n: ');   read(m);
    while ((m)<>ultimo) do
    begin
        read(n);
        esMultiplo := multiplos(m, n);
        writeLn(esMultiplo);
        read(m);
    end
end.