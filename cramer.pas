program cramer;
var 
        a, b, c, d, e, f, x, y:real;
begin 
        write ('Introduzca los valores para a,b,c,d,e,f en ese orden: ');
        readLn (a, b, c, d, e, f);  
        if (a * e)-(d * b) <> 0 then 
            begin 
                x:= ((c * e) - (f * b)) / ((a * e) - (d * b));
                y:= ((a * f) - (d * c)) / ((a * e) - (d * b));
            end
        else
                writeLn ('No existe solucion');
        if (a * x + b * y = c)then
                if (d * x + e * y = f) then
                    begin
                        writeLn ('La solucion es: ');
                        writeLn ('x:', x: 0:3);
                        writeLn ('y:', y: 0:3);
                    end
                else
                    writeLn ('No existe solucion');

end.