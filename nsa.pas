program aleatorio;
var 
      a,b,c : integer;
begin 
      write('Ingrese un número entero de dos dígitos: ');
	  readLn(a);
	  b := sqr(a);
	  c := ((b)mod(1000)div(10));
	  writeLn('Número ingresado: ',a:0);
	  writeLn('Cuadrado del número: ',b:0);
	  writeLn('Siguiente número pseudoaleatorio: ',c:0)
end.
	  
	 
	  
	  