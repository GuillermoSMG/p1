program repetidos;
var 
		d,n,cn,ax : integer;
		aparece : boolean;
begin 
		write('Introduzca un entero de 4 digitos: ');	readLn(n);
		write('Introduzca un entero de 1 digito: ');	readLn(d);
		cn := n;
		aparece := false;
		
		ax := n div 1000;
		if (ax = d) then
		begin
			aparece := true;
			writeLn(cn:0);
			write('+');
		end;
		
		n := n mod 1000;
		ax := n div 100;
		if ax = d then
		begin
		if (not aparece) then
			begin
				aparece := true;
				writeLn(cn:0);
				write(' +');
			end
		else 
			write('+');
		end	
		else 
			if aparece then
			write(' ');
		
		n := n mod 100;
		ax := n div 10;
		
		if ax = d then
		begin 
			if (not aparece) then
				begin
					aparece := true;
					writeLn(cn:0);
					write('  +');
				end	
				else
					write('+');
		end	
		else 
			if (aparece) then
				write(' ');

		n := n mod 10;
		
		if (n = d) then
		begin
			if (not aparece) then
				begin
					aparece := true;
					writeLn(cn:0);
					write('   +');
				end	
			else	
					write('+')
		end
		else 
			if aparece then 
				write(' ');
		
		if not aparece then	
			writeLn(d:0 , 'no aparece en',cn)
end.			