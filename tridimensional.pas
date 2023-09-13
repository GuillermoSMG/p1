program tablatresd;

const 
    M = 3;
    N = 3;
    P = 3;

type
    valorBool = 0..1;
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    tablaTridimensional = array [RangoM, RangoN, RangoP] of boolean;

var 
    tabla : tablaTridimensional;

procedure Carga(var tabla : tablaTridimensional);
var i, j, k : integer;  numero : valorBool;
begin
    for i := 1 to 3 do
        for j := 1 to 3 do
            for k := 1 to 3 do
            begin
                read(numero);
                if (numero = 1) then
                    tabla[i,j,k] := true
                else
                    tabla[i,j,k] := false
            end;
end;

procedure Intercambiar(var tabla : tablaTridimensional);
var i, j, k : integer;  
begin
    for i := 1 to 3 do
        for j := 1 to 3 do
            for k := 1 to 3 do
            begin
                if (tabla[i,j,k]=true) then
                    tabla[i,j,k] := false
                else 
                    tabla[i,j,k] := true;
            end;
end;


procedure Mostrar(tabla : tablaTridimensional);
var i, j, k : integer;
begin
    for i := 1 to 3 do
    begin
        writeLn();
        for j := 1 to 3 do
        begin
            writeLn();
            for k := 1 to 3 do
                write(' ',tabla[i,j,k])
        end;
    end;
    writeLn();
end;
begin
writeLn('Escribo 0 para False y 1 para True');
Carga(tabla);
write('Al intercambiar el valor TRUE por FALSE y viceversa queda: ');
Intercambiar(tabla);
Mostrar(tabla)
end.