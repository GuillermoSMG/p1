program juntos;

const
   N = 10;
   
type
   arreglo = array [1..N] of Integer;
   
var 
    tabla : arreglo;
    cantidad, num, indmax, valmax, cant : integer;
    
procedure Carga(var tabla : arreglo);
var   i : integer;
begin
    for i := 1 to N do
        read(tabla[i]);
end;

function CantMayores(tabla: arreglo; num : integer; VAR cantidad : integer) : integer;
var i : integer;
begin
	cantidad := 0;
	for i := 1 to N do
		if (tabla[i] > num) then
			cantidad := cantidad + 1;
    cantidad := cantidad;
end;

function Ordenado(tabla : arreglo): boolean;
var   i : integer;
begin
    i := 1;
    while (i <= N-1) and (tabla[i] < tabla[i+1]) do
        i := i + 1;
    if i = N then
        Ordenado := true
    else 
        Ordenado := false;
end;

procedure MaxPos(tabla : arreglo; var indmax, valmax : integer);
var   i : integer;
begin
   indmax := 1;
   for i := 2 to N do 
        if (tabla[i] > tabla[indmax]) then  
            indmax := i;
        valmax := tabla[indmax];
end;

begin 
    Carga(tabla);
    write('Elementos mayores a: ');
    read(num);
    cant := CantMayores(tabla, num, cantidad);
    writeLn('Hay ', cant:0, ' valores mayores al numero ingresado.');
    if Ordenado(tabla) then
        writeLn('El arreglo esta ordenado.')
    else 
        writeLn('El arreglo no esta ordenado.');
    MaxPos(tabla, indmax, valmax);
    writeln('El valor maximo es ', valmax:0, ' y se encuentra en el indice ',indmax:0)
end.