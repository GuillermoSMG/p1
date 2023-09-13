program grafica;
var 
    x,n,i,j : integer;

begin
    write('Ingrese un valor para n: ');
    read(n);
    write('Ingrese ',n,' enteros positivos: ');
    for i := 1 to n do
    begin
        read(x);
            for j := 1 to x do
                write('*'); writeLn();
    end
end.