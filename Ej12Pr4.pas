(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  04
 Ejercicio: 12
*)

program fxymax;

var 
  x, y, f, fMax, n : integer;
begin
  write('Ingrese un valor para n: ');
  read(n);

  fMax := -maxint;
  for x:= -n to n do
    for y:= -n to n do
  begin
    f := x*x - 9*x*y + y*y;
    if (f > fMax) then
      fMax := f
  end;

  writeln('El valor máximo para x e y en el entorno de -', n:1, ' a ', n:1, ' es: ', fMax:1, '.')
end.
