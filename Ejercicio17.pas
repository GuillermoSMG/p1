(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  02
 Ejercicio: 17
*)

program tiempos;

var h1, m1, h2, m2 : Integer;
	tiempo1, tiempo2 : Integer;
	dias, horas, minutos : Integer;

begin

    (* lectura de los dos tiempos ingresados *)
	readln(tiempo1, tiempo2);

	(* separacion de horas y minutos *)
	h1:= tiempo1 div 100;  (* cociente de la division entera: 1345 div 100 = 13 *)
	m1 := tiempo1 mod 100; (* resto de la division entera   : 1345 mod 100 = 45 *)
	h2:= tiempo2 div 100;
	m2 := tiempo2 mod 100;

    (* sumo minutos y tomo el resto de dividir entre 60 
       ejemplo: (45+53) mod 60 = 38                     *)
	minutos := (m1+m2) mod 60;

	(* sumo horas, incluyendo un minuto si es necesario y 
	   tomo el resto de dividir entre 24                  
	   ejemplo: (13+21+ (45+53) div 60) mod 24
	            (13+21+1) mod 24
	             35 mod 24 = 11                           *)
	horas:= (h1+h2+(m1+m2)div 60) mod 24;
	
	(* dias sera 0 o 1, dependiendo de si la suma de horas supera 24 
	   ejemplo: 35 div 24 = 1                                       *)
	dias := (h1+h2+(m1+m2)div 60) div 24;

        (* para que la suma de las dos horas ingresadas se despliegue correctamente *)
        (* por ejemplo, si la suma es 10:05, se despliega  1005 *)
        write(dias:1, ' ');
        write ((horas div 10):1, (horas mod 10):1);
        writeln((minutos div 10):1, (minutos mod 10):1); 
end.

