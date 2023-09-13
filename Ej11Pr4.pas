(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  04
 Ejercicio: 12
*)

program maxfx;

var 
  m, n, x, fx, fxMax : integer;
begin
  write('Ingrese un valor para m: ');
  read(m);
  write('Ingrese un valor para n: ');
  read(n);

  x := m;
  fxMax := x*x - 18*x + 5;

  for x:= m + 1 to n do
  begin
    fx := x*x - 18*x + 5;
    if (fx > fxMax) then
      fxMax := fx
  end;

  writeln('El valor máximo para x en el entorno de ', m:1, ' a ', n:1, ' es ', fxMax:1 ,'.')
end.
