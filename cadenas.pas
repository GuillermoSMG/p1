program strings;

const 
    M = 3;
    N = 10;

type 
    CadenaM = array [1..M] of char;
    CadenaN = array [1..N] of char;

var 
    StrM : CadenaM;
    StrN : CadenaN;
    appear, complete : boolean;
    i, j : integer;
    firstChar : char;

function Existe(StrM : CadenaM; StrN : CadenaN):boolean;
var i, j : integer;
begin
    i := 1;
    j := 1;
    begin 
        while (j <= N) and (StrN[j] <> StrM[i]) do
        begin
            Existe := false;
            if (j < N) then
                j := j + 1
            else if (j = N) and (i <= M) then
            begin
                    j := 1;
                    i := i + 1;
            end;
            if (j = N) and (i > M) then
                j := j + 1;
        end;
        if (j > N) then
            Existe := false
        else 
            Existe := true;
    end;
end;

function PrimerChar(StrM : CadenaM; StrN : CadenaN):char;
var i, j : integer;
begin
    i := 1;
    j := 1;
    begin 
        while (j <= N) and (StrN[j] <> StrM[i]) do
        begin
            if (j < N) then
                j := j + 1
            else if (j = N) and (i <= M) then
            begin
                    j := 1;
                    i := i + 1;
            end;
            if (j = N) and (i > M) then
                j := j + 1;
        end;
        if (j <= N) then
            PrimerChar := StrN[j];
    end;
end;

function ApareceCompleta(StrM : CadenaM; StrN : CadenaN):boolean;
var j : integer;
begin
    for j := 1 to (N-(M-1)) do
    begin
        if (StrN[j] = StrM[1]) then
            if (StrN[j+1]) = StrM[2] then
                if (StrN[j+2]) = StrM[3] then
                    ApareceCompleta := true;
    end;
end;

begin 
    for i := 1 to M do
        begin
            write('Ingrese un valor para el indice ',i:0, ' De la cadena M: ');
            readLn(StrM[i]);
        end;
    for j := 1 to N do
        begin
            write('Ingrese un valor para el indice ',j:0, ' De la cadena N: ');
            readLn(StrN[j]);
        end;
    appear := Existe(StrM, StrN);
    writeLn('Al menos una letra de la Cadena M aparece en la Cadena N: ',appear);
    if (appear = true) then
    begin
        firstChar := PrimerChar(StrM, StrN);
        writeLn('La primer coincidencia es: ',firstChar);
        complete := ApareceCompleta(StrM, StrN);
        writeLn('La Cadena M aparece completa y ordenada dentro de la Cadena N: ', complete);
    end
end.