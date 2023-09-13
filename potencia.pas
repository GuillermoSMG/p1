program potencia;
var 
	n,x,xen,i : integer;

begin
	write('Ingrese valores para x y n en ese orden(se calculara x elevado a n): ');	readLn(x,n);
    xen := 1;
    for i := 1 to n do
        xen := xen*x;
    writeLn('El valor de ',x,' elevado a ',n,' es: ',xen)
end.	