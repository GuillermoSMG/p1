program Ejercicio10;

const
   M = 3;  {Estos valores de las constantes se ponen a modo de ejemplo}
   N = 2;
   P = 3;
type
   RangoM = 1..M;
   RangoN = 1..N;
   RangoP = 1..P;
   MatrizMxN = ARRAY [RangoM, RangoN] OF Integer;
   MatrizNxP = ARRAY [RangoN, RangoP] OF Integer;
   MatrizMxP = ARRAY [RangoM, RangoP] OF Integer;

var
   matriz1 : MatrizMxN;
   matriz2 : MatrizNxP;
   prod : MatrizMxP;

procedure leerMatrices(var matriz1 : MatrizMxN; var matriz2 : MatrizNxP);
var fil1,fil2,col1,col2: Integer;
begin
   writeln('Ingrese ',M,'x',N);
   for fil1:= 1 to M do
   begin
      for col1:= 1 to N do
         read(matriz1[fil1,col1]);
      writeln;
   end;
   writeln('Ingrese ',N,'x',P);
   for fil2:= 1 to N do
   begin
      for col2:= 1 to P do
         read(matriz2[fil2,col2]);
      writeln
   end
end;

procedure producto(matriz1 : MatrizMxN; matriz2 : MatrizNxP; var prod : MatrizMxP);
var suma: integer;
    i: RangoM;
    j: RangoP;
    k: RangoN;
begin
   for i := 1 to M do            {Recorro las filas de la matriz 1}
    begin
      for j := 1 to P do         {Recorro las columnas de la matriz 2}
      begin
         suma := 0;
         for k := 1 to N do  
            suma := suma + matriz1[i,k] * matriz2[k,j];
         prod[i,j] := suma
      end
   end
end;

procedure escribirProducto(prod: MatrizMxP);
var filprod,colprod:integer;
begin
   writeln('Matriz resultado es: ');
   for filprod:= 1 to M do
   begin
      for colprod:= 1 to P do
         write(prod[filprod,colprod],' ');
      writeln()
   end
end;

begin
   leerMatrices(matriz1,matriz2);
   producto(matriz1,matriz2,prod);
   escribirProducto(prod); 
end.
{En todas las partes del ejercicio se uso un for porque hay que recorrer toda la matriz en cada caso.}