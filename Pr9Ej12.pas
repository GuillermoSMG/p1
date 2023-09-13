(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  09
 Ejercicio: 12
*)

program Ejercicio12;
CONST
   N = 5; { A modo de ejemplo se define N = 5 }
TYPE
   Digito = '0'..'9';
   Digitos = ARRAY [1..N] OF Digito;
var arreglo : Digitos;

function potencia(base : Integer; exponente : Integer) : Integer;
{ pre condicion: (base<>0) or (exponente>0) }
var pot: Integer;
    i: Integer;
begin
    pot:= 1;
    for i:= 1 to exponente do
         pot:= pot * base;
    potencia:= pot
end;

{Ej12 b) Escriba una función en Pascal llamada Conversion que, dado un arreglo de dígitos, 
convierta la secuencia de dígitos al entero equivalente. }

function Conversion (arreglo : Digitos) : Integer;
var i, entero : Integer;

  function ConverDig (d : Digito) : Integer;
  begin
      ConverDig := ord(d) - ord('0');
  end;

begin
   entero := ConverDig(arreglo[N]);
   for i := N-1 downto 1 do
    begin
      entero := entero + ConverDig(arreglo[i]) * potencia(10,(N-i));
    end;
   Conversion := entero;
end;

{Ej12 a) Escriba un procedimiento en Pascal llamado Lectura que cargue un arreglo de dígitos 
con valores leídos desde la entrada estandar, que sean solo dígitos. }

procedure Lectura (var arreglo : Digitos);
{pre condicion: los valores leidos deben ser digitos sin espacios entre ellos }
var i : Integer;
    a : Digito;
begin
   for i := 1 to N do
    begin
      read (a);
      arreglo[i] := a;
    end;
   readln;
end;

{ Programa principal }
begin
  Lectura (arreglo);
  writeln (Conversion (arreglo));
end.
     
