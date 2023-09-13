(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  09
 Ejercicio: 03
*)

{Escriba un programa principal que permita probar los procedimientos de las partes a y b}
program Ej3;
const
	N = 10;
type
	rango = 1..N;
        arreglo = array[rango] of integer;
var
	tabla : arreglo;
	num, cant, indmax, valormax : integer;

{Ej3a) Escriba un procedimiento en Pascal llamado Carga que cargue un arreglo de enteros con valores leídos desde la entrada }{estandar. Determine si el arreglo debe ser pasado por valor o por referencia.}

procedure Carga (var tabla: arreglo);
{El arreglo se pasa por referencia, ya que queremos devolver el mismo al programa principal}
{Si lo pasamos por valor, lo recibimos en el procedimiento, pero luego de cargarlo no lo pasamos al programa principal.}

var i : integer;
begin
	write('Ingrese ', N,' valores enteros: ');
	{ Cargo el array }
	for i:= 1 to N do
		read(tabla[i]);
end;

{Ej3b) Escriba una función en Pascal llamada CantMayores que, dados un arreglo de enteros y un entero num, devuelva la cantidad de}
{valores almacenados en el arreglo que son mayores que num.}

procedure CantMayores (tabla: arreglo; num : integer; VAR cant : integer);

var i : integer;
begin
	{recorro todo el arreglo y busco la cantidad de numeros mayores}
	cant := 0;
	for i := 1 to N do
		if (tabla[i] > num) then
			cant:= cant + 1;
end;

{Ej3c) Escriba una función en Pascal llamada Ordenado que, dado un arreglo de enteros, devuelva true si el arreglo está ordenado }{en forma ascendente y false en caso contrario.}

function Ordenado (tabla: arreglo) : boolean;

var i : integer;
begin
	{recorro el arreglo hasta encontrar uno elemento que no este en orden ascendente o hasta el final}
	{siempre controlo por circuito corte no salirme de rango}
	i := 1;
	while (i <= N -1) and tabla[i] < tabla[i + 1] Do
			i:= i + 1;
	if i = N then
		Ordenado := true
	else
		Ordenado := false;
end;

{Ej3d) Escriba un procedimiento en Pascal llamado MaxPos que, dado un arreglo de enteros, devuelva el valor más grande (maximo) y} {el primer indice (posicion) en que este ocurre.}

procedure MaxPos (tabla: arreglo; var indmax, valormax : integer);
{El arreglo se pasa por valor, ya que no queremos cambiarlo en el procedimeinto}
{indmax ey valormax se pasan por referencia para devolver al programa principal los valores hallados.}

var i : integer;
begin

	{recorro todo el array y hallo el indice del valor mas grande}
	indmax := 1;
	for i := 2 to N do
		if(tabla[i]>tabla[indmax]) then
			indmax:= i;
        valormax := tabla[indmax];
end;

{Ej3e) programa principal}
{Escriba un programa principal que permita probar los subprogramas anteriores. Dicho programa debe realizar las siguientes }{acciones (declare toda variable que sea necesaria):}
{Cargar por la entrada estándar un arreglo de enteros (utilizando el procedimiento Carga).}
{Pida un valor por teclado y cuente cuántos valores mayores que él hay en el arreglo (utilizando la función CantMayores).}
{Determine si el arreglo está o no ordenado en forma ascendente (utilizando la función Ordenado).}
{Obtener el máximo valor del arreglo y el primer índice donde ocurre (utilizando el procedimiento MaxPos).}
{Exhibir por la salida estándar todos los resultados.}
begin
        Carga(tabla);
		Readln('Valor para contar elementos mayores : ', num);
		CantMayores (tabla,num, cant);
		writeln('Hay :' , cant, 'mayores al numero ingresado');
		if Ordenado (tabla) then
			writeln('El arreglo esta ordenado')
		else
			writrln('El arreglo no esta ordenado');
        MaxPos(tabla, indmax, valormax); 
	{imprimo el resultado}
	writeln('El indice maximo es: ', indmax, ' y el valor maximo es ', valormax);
end.

