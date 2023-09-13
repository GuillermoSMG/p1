program raices1;
var 
   a, b, c : integer;
   raiz1, raiz2 : real;
   cant : integer;

procedure raices(a, b, c : integer; var raiz1, raiz2 : real; var cant : integer);
   var 
      disc : real;

   begin
      disc := sqr(b) - 4 * a * c;
      if disc > 0 THEN
      begin 
         cant := 2;
         raiz1 := (-b + sqrt(disc)) / (2 * a);
         raiz2 := (-b - sqrt(disc)) / (2 * a);
      end
      else if disc = 0 then 
      begin
         cant := 1;
         raiz1 := -b / (2 * a);
      end
      else 
         cant := 0;
   end;

begin
    read(a,b,c);
    raices(a,b,c,raiz1,raiz2,cant);
    case cant of
        0: WriteLn('No se encontraron raices.');
        1: WriteLn('Se encontro una raiz: ',raiz1:4:2);
        2: WriteLn('Se encontraron 2 raices: ',raiz1:4:2,' ',raiz2:4:2)
    end
end.
   