program copystring;

const 
    M = 3;
    N = 10;

type 
    cadenaM = array [1..M] of char;
    cadenaN = array [1..N] of char;

var 
    StringM : cadenaM;
    StringN : cadenaN;
    appear : integer;

procedure CargaM(var StringM : cadenaM);
var i : integer;
begin
    for i := 1 to M do 
    begin
        write('Ingrese un valor para el indice ', i:0, '/3 de la cadena M: ');
        readLn(StringM[i]);
    end;
end;

procedure CargaN(var StringN : cadenaN);
var i : integer;
begin
    for i := 1 to N do 
    begin
        write('Ingrese un valor para el indice ', i:0, '/10 de la cadena N: ');
        readLn(StringN[i]);
    end;
end;

function ApareceCompleta(StringM : CadenaM; StringN : CadenaN):integer;
var j, aparece : integer;
begin
    j := 1;
    aparece := 0;
    while (j < (N-(M-1))) and (aparece <> j) do
    if (StringN[j] <> StringM[1]) then
        j := j + 1
    else
    begin
        if (StringN[j+1]) = StringM[2] then
            if (StringN[j+2]) = StringM[3] then
                aparece := j
            else
            begin
                aparece := 0;
                j := j + 1;
            end
        else 
            j := j + 1;
    end;
    ApareceCompleta := aparece;
end;

begin
CargaM(StringM);
CargaN(StringN);
appear := ApareceCompleta(StringM, StringN);
if (appear <> 0) then
    writeLn('La primer coincidencia es en la posicion: ', appear:0)
else 
    writeLn(appear:0)
end.