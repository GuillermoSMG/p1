program pendulo(input, output);
const 
      pi = 3.14;
      g = 9.8;
var 
      t,l : real;
begin 
      write('Ingrese longitud del pendulo: ');
      readLn(l);
      t := 2*pi*sqrt(l/g);
      write('El periodo del pendulo es: ', t)
end.