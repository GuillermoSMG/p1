(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  06
 Ejercicio: 04
*)

Program Pr6Ej4;
const
  ULTIMO = 25;
var
  contador, n : Integer;
  divisor, fin : Integer;
  EsPrimo: Boolean;

Begin {Pr6Ej4}
  n := 1; {asumimos que uno no es primo}
  For contador:=1 to ULTIMO do
  Begin
    {Busco siguiente primo a partir de n}
    Repeat
      n := n + 1;
      {Averiguo si n es primo, EsPrimo(n)?}
      divisor := 2;
      fin := Trunc(Sqrt(n));
      While (divisor <= fin) AND (n mod divisor <> 0) do
        divisor := succ(divisor);
      If (divisor > fin) then
        EsPrimo := True
      else
        EsPrimo := False
      {----------  Fin de EsPrimo -----------}
    Until EsPrimo;
    {Imprimo el número y la raiz cuadrada del primo encontrado}
    WriteLn(n, ' ', sqrt(n):2:2)
  End; {for}
End. {pr6Ej4}

