program transp1;

const 
    TAM = 3;

type 
    matriz = array [1..TAM, 1..TAM] of integer;

var 
    matrizA, matrizB : matriz;
    i,j : integer;

procedure Transpuesta(matrizA : matriz; var matrizB : matriz);
var i, j : integer;
begin
    for i := 1 to TAM do
        for j := 1 to TAM do
            read(matrizA[i,j]);
            for i := 1 to TAM do
            begin
                writeLn();
                for j := 1 to TAM do
                    write(matrizA[j,i]:0,' ');
            end;
            matrizB := matrizA;
    writeLn()
end;
begin
Transpuesta(matrizA,matrizB);
end.