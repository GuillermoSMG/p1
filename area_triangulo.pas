program area_del_triangulo(input, output);
var 
      d,b,c,s,A : real;
begin
      write ('Ingrese longitudes de los lados del triangulo: ');
      readLn(d,b,c);
      s := (d+b+c)/2;
      A := sqrt(s*(s-d)*(s-b)*(s-c));
      write('El area del triangulo es: ', A)
end.