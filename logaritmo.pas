program logaritmo;
var 
    enteron, enterob, enterok : integer;

begin
    write('Ingrese dos enteros n y b: ');   readLn(enteron,enterob);
    enterok := 0;
    while (enterob <= enteron) do
    begin
        enterok := enterok + 1;
        enteron := enteron div enterob;
    end;
    writeLn('La parte entera del log de n en base b es: ',enterok:3)
end.    

