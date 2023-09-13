program calc1;
const 
    espacio = ' ';
    fin = '=';

var 
    operador : char;
    numero, nextnum : integer;
begin
    read(numero);

    repeat 
        read(operador)
    until (operador <> espacio);
     
    while (operador <> fin) do
    begin 
        read(nextnum);
        case (operador) of
            '+' : numero := numero + nextnum;
            '-' : numero := numero - nextnum;
            '*' : numero := numero * nextnum;
            '/' : numero := numero div nextnum;
        end;
        repeat 
            read(operador)
        until (operador <> espacio);
    end;
    writeLn('El resultado es ',numero:5);
end.