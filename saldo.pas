program sueldo;
var 
	numero, saldo : real;
	letra : char;

begin
	readLn(letra,saldo);
	read(letra);
	while letra <> 'X' do
	begin
		readLn(numero);
		if letra = 'D' then
			saldo := saldo + numero
		else 
			saldo := saldo - numero;
		read(letra);
	end;
	writeLn('El saldo final es: ',saldo:0:2)
end.	