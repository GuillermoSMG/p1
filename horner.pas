program horner;

const 
    centinela = -1;

var 
    x, total : real;
    numero : integer;

begin
    write('x = ');
    read(x);
    write('Coeficientes: ');
    total := 0;
    numero := 0;
    repeat 
        total := total * x + numero;
        read(numero);
    until (numero = centinela);
    writeln('Resultado: ', total:1:0)
end.