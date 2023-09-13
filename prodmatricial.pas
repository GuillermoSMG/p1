program productomatricial;

const 
    M = 3;
    N = 2;
    P = 3;
type
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMxN = array [RangoM, RangoN] of integer;
    MatrizNxP = array [RangoN, RangoP] of integer;
    MatrizMxP = array [RangoM, RangoP] of integer; 

var 
    MatrizA : MatrizMxN;
    MatrizB : MatrizNxP;
    MatrizC : MatrizMxP;

procedure LeerMatrices(var MatrizA : MatrizMxN; var MatrizB : MatrizNxP);
var i1, i2, j1, j2 : integer;
begin
    writeln('Ingrese la matriz ', M:0,' x ',N:0);
    for i1 := 1 to M do 
    begin
        for j1 := 1 to N do
        read(MatrizA[i1, j1]);
        writeLn();
    end;
    writeln('Ingrese la matriz ', N:0,' x ',P:0);
    for i2 := 1 to N do 
    begin
        for j2 := 1 to P do
        read(MatrizB[i2, j2]);
        writeLn();
    end;
end;

procedure Producto(MatrizA : MatrizMxN; MatrizB : MatrizNxP; var MatrizC : MatrizMxP);
var suma : integer;
    i : RangoM;
    j : RangoP;
    k : RangoN;
begin
    for i := 1 to M do
    begin
        for j := 1 to P do
        begin
            suma := 0;
            for k := 1 to N do 
                suma := suma + MatrizA[i,k] * MatrizB[k,j];
            MatrizC[i,j] := suma;
        end;
    end;
end;

procedure MostrarProducto(MatrizC : MatrizMxP);
var filaProd, columProd : integer;
begin
    writeln('Matriz resultado es: ');
    for filaProd := 1 to M do
    begin
        for columProd := 1 to P do 
            write(MatrizC[filaProd,columProd]:0, ' ');
        writeLn();
    end;
end;

begin
   LeerMatrices(MatrizA,MatrizB);
   Producto(MatrizA,MatrizB,MatrizC);
   MostrarProducto(MatrizC); 
end.