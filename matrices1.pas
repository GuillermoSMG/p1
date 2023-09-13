program matriz1;

const
    maximo = 10;

type 
    matricial = array [1..maximo,1..maximo] of integer;
    rango = 1..maximo;
    
var 
    matriz : matricial;
    m, n : integer;

procedure Carga(var matriz : matricial);
var   i, j : integer;   
begin 
    for i := 1 to maximo do
        for j := 1 to maximo do
            read(matriz[i,j]);
end;

procedure CambioLinea(m, n : integer; matriz : matricial);
var   i, j, max : integer;
begin
    max := maximo;
    if (m > max) then
        writeLn(m:1, ' no es un valor valido para el indice de filas.')
    else if (n > max) then
        writeLn(n:1, ' no es un valor valido para el indice de filas.')
    else
    begin
        for i := 1 to maximo do
            for j := 1 to maximo do
            begin
                if (i = m) then
                    write(' ', matriz[n,j]:0);
                if (i = n) then
                    write(' ', matriz[m,j]:0);
                if (i <> m) and (i <> n) then
                    write(' ', matriz[i,j]:0);
            end;
    end;
end;

begin
    Carga(matriz);
    read(m, n);
    CambioLinea(m, n, matriz)
end.