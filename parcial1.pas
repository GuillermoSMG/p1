program parcial;

const 
    fin = 0;

var 
    num1, num2 : integer;
    dato1 ,cantidadMultiplos, anterior, siguiente  : integer;

function multDato(num1, num2: integer): boolean;
begin
    if (num2 mod num1 = 0) then
        multDato := true
    else 
        multDato := false;
end;

begin
    read(dato1);
    num1 := dato1;
    cantidadMultiplos := 0;
    read(anterior);
    while (anterior <> fin) do
    begin
        num2 := anterior;
        if (multDato(num1, num2) = true) then
            cantidadMultiplos := cantidadMultiplos + 1
        else 
            cantidadMultiplos := cantidadMultiplos;
        read(siguiente);
        anterior := siguiente;
    end;
    writeLn(cantidadMultiplos:0)
end.