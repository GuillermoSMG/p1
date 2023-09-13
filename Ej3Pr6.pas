program horner;
const
    CENTINELA = -1;
var
    total,x : real;
    num : integer;
begin
   write ('x = ');
   Read(x);
   write ('coeficientes ');
   total := 0;
   num := 0;
   repeat
      total := total * x + num;
      Read(num);
   until (num = CENTINELA);
   writeln('Resultado: ', total:1:0)
end.

