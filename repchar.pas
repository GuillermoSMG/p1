program ex;
var 
	n,i,j : integer;
	c : char;

begin
	write('Ingrese un caracter c: '); readLn(c);
	write('Ingrese un natural n: '); readLn(n);
	
	for i := 1 to n do
		begin	
			for j := 1 to n do
				write(c); writeLn();
				n := n-1;
		end
end.		