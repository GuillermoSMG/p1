program datos;

const
    centinela = '$';
    separador = '|';

var
    texto : char;

begin
    read(texto);
    while texto <> centinela do
    begin
    repeat
        if (texto <> separador) and (texto <> centinela) then
        begin
            write(texto);
            read(texto);
        end;
    until (texto = separador) or (texto = centinela);
    case texto of 
        separador : begin
                        writeLn();
                        read(texto)
                    end;
        centinela : writeLn()
    end;
    end;
    writeLn();
    writeLn();
    writeLn('$')
end.
