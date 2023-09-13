program calc1;
const 
    fin = '=';

var 
    operador : char;
    numero,nextnum : integer;
begin
    read(numero,operador);
    while (operador <> fin) do
    begin 
        read(nextnum);
            case (operador) of
                '+' : numero := numero + nextnum;
                '-' : numero := numero - nextnum;
                '*' : numero := numero * nextnum;
                '/' : numero := numero div nextnum;
                ' ' : numero := numero + 0;
            end;  
        read(operador);    
    end;
    writeLn('El resultado es ',numero:5);
end.