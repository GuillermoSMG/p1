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
    appear : boolean;
    i, j : integer;
    FirstChar : char;

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
            else if (j = N) and (Existe = false) then
            begin
                while (i <= M) do
                begin
                    j := 1;
                    i := i + 1;
                end;
            end;
            if (j = N) and (i > M) then
                j := j + 1;
        end;
        if (StrN[j] = StrM[i]) then
            Existe := true;
    end;
end;

begin 
    for i := 1 to M do
        begin
            write('Ingrese un valor para el indice ',i:0, ' De la cadena StrM: ');
            readLn(StrM[i]);
        end;
    for j := 1 to N do
        begin
            write('Ingrese un valor para el indice ',j:0, ' De la cadena StrN: ');
            readLn(StrN[j]);
        end;
    appear := Existe(StrM, StrN);
    writeLn(appear);
   
end.