
(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  04
 Ejercicio: 07
*)

program grafica;

var 
  n, num, i, j: integer;
begin
  write('Ingrese un valor para n: ');
  read(n);

  write('Ingrese ', n:1, ' enteros positivos: ');
  for i:= 1 to n do
  begin
    read(num);
    for j:= 1 to num do
      write('*');
    writeln()
  end
end.
