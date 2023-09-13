(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  07
 Ejercicio: 13
*)



program factores_primos;

type entero_positivo = 0 .. maxint;

function FactorPrimo(x : entero_positivo) : entero_positivo;
var i : integer;
begin
   if x = 1 then
       FactorPrimo := 1
   else begin
      i := 2;
      while (x mod i <> 0) do
         i := i + 1;
      FactorPrimo := i;
   end;
end;

var n, fp, aux : integer;

begin
   write('Entrada:  ');
   read(n);
   while (n <> 0) do begin
      writeln(n);
      write ('Resultado: ');
      fp := FactorPrimo(n);
      write(fp);
      aux := n DIV fp;
      while (aux <> 1) do begin
         fp := FactorPrimo(aux);
         write(' * ', fp);
         aux := aux DIV fp;
      end;
      writeln();
      write('Entrada:  ');
      read(n);
   end;
end.

