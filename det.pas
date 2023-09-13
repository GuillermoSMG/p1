program raices;

var a,b,c,x,x2 : real;
	det : real;
	
begin
		write('Ingrese valores para a,b,c: ');	readLn(a,b,c);
		det := (sqr(b))-4*a*c;
		writeLn('a= ',a:2:1,'   ','b= ',b:2:1,'   ','c= ',c:2:1,'   ');
		
		if (det=0) then
		begin
			x := (-b)/(2*a);
			writeLn('Dos raices reales iguales: ',x:6:3);
		end
		else
			if (det>0) then
			begin
				x := (-b + sqrt(det))/2*a;
				x2 := (-b - sqrt(det))/2*a;
				writeLn('Dos raices reales diferentes: ',x:6:3 ,' y ',x2:6:3);
			end
			else
			begin	
				x := (-b)/(2*a);
				x2 := sqrt(-det)/(2*a);
				writeLn('Dos raices complejas diferentes: ',x:6:3 ,' y ',x2:6:3);
			end			
end.		