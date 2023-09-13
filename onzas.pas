program onzas;
const 
		b = 0.22;
var 
		a,c,d : real;
begin 
        write('Ingrese el peso de la carta: ');
		read(a);
         if (a > 0) and (a <= 1) then 
		    begin
		    	writeLn('Costo    Peso');
		    	writeLn('$',b:0:2  ,   a:8:2)
		    end
        else if trunc(a) = (a) then 
			begin
				c := 0.22 + (a-1)*0.17;
				write('$',c:0:2  ,   a:8:2)
			end
			else
			    begin
			    d := 0.22+(trunc(a))*0.17;
			    writeLn('Costo    Peso');
				writeLn('$',d:0:2  ,   a:8:2)
		        end	
end.		