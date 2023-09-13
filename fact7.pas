program factorial;
var 
	n,nn,i : integer;
	
begin
	write('Ingrese un valor para n: '); readLn(n);
	nn := 1;
	 for i := n downto 1 do
	    nn := nn*i;
	writeLn('El factorial de',n,' es:',nn);
end.