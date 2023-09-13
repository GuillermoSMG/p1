program matsim;

const 
    N = 4;

type 
    matriz : array [1..N, 1..N] of integer;
    arreglo : array [1..10] of integer;

var     
    arr : arreglo;
    simetrica : matriz;
    valor : integer;            

procedure LeerArr(var arr : arreglo);
var i : integer;
begin
    for i := 1 to N do
    begin
        write('Ingrese un valor para el indice ',i:0, ': ');
        readLn(arr[i]);
    end;
end;

procedure Funcion(arr : arreglo; var simetrica : matriz);
var i, j, arri : integer;
begin
    arri := 1;
    i := 1;
    j := 1;
    
end;