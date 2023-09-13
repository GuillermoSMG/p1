program tablas;

var 
    n, m, i, j, tabla : integer;

begin 
    write('Introduzca dos enteros positivos: ');    read(n,m);
    for i := n to m do
    begin
    writeLn('>>Tabla del ',i:0,'<<');
        for j := 1 to 10 do 
        begin
            tabla := i * j;
            writeLn(i:0,' ','*',' ',j:0,' ','=',' ',tabla:2);
        end;
    end
end.