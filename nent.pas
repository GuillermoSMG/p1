program nent;
var
	n,i,x,a,b : integer;
	
begin
	write('Ingrese un valor para n: ');	readLn(n);
    b := maxint;
	a := x; 
	for i := 1 to n do
	   begin
	    read(x);
	        if (x > a) then
	        	a := x;
	        if (x < b) then
	        	b := x;
	   end;
	    writeLn('El mayor entero ingresado es: ',a);
	    writeLn('El menos entero ingresado es: ',b)
	
end.	