(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  05
 Ejercicio: 08
*)

program p5e8;

const FIN = '$';

var anterior, siguiente : char;

begin

                     
   read (anterior);  { lee el primer caracter }
   
   while anterior <> FIN do
   begin

      read (siguiente); { lee el siguiente caracter }
      if ('a' <= anterior) and (anterior <= 'z') and (anterior = siguiente)
         then write (anterior, anterior, ' '); { se exhiben consonantes y/o vocales }
      anterior := siguiente  { actualiza las variables }
      
   end;
   
   readln

end.

