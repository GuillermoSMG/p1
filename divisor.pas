program divisores;
var 
		n,divn : integer;

begin	
		write('Ingrese un numero natural: ');	readLn(n);
        divn := n;
        for n := 1 to divn do
            if divn mod n = 0 then
            writeLn(n)
end.