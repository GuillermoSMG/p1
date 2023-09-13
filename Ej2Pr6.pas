(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  06
 Ejercicio: 02
*)
Program pr6ej2;
const
  ESPACIO = ' ';
  PUNTO = '.';
var
  letra, actual, anterior : Char;
  cant : Integer;
Begin
  {Leo la letra de control de fin de palabra}
  Write('Letra: ');
  ReadLn(letra);
  {Leo la oración de entrada}
  Write('Oración: ');
  {Leemos de a una palabra a la vez hasta fin de oración}
  {Notar que para detectar que finaliza una palabra actual = ESPACIO o PUNTO y anterior es una letra}
  cant := 0;
  Read(actual);
  Repeat
    anterior := actual;
    Read(actual);
    if ((actual = ESPACIO) OR (actual = PUNTO)) AND (anterior = letra) then
      cant := cant + 1;
  Until (actual = PUNTO);
  {Imprimimos el resultado}
  WriteLn('Salida: ', cant:1);
End.

