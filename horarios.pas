program horario;
var 
      h1,h2,m1,m2 : integer;
      tiempo1,tiempo2 : integer;
      dias,minutos,horas : integer;
begin
      readLn(tiempo1, tiempo2);
      h1 := tiempo1 div 100;
      m1 := tiempo1 mod 100;
      h2 := tiempo2 div 100;
      m2 := tiempo2 mod 100;
      minutos := (m1+m2) mod 60;
      horas := (h1+h2+(m1+m2) div 60) mod 24;
      dias := (h1+h2+(m1+m2) div 60)div 24;
      write (dias:1, horas:3, minutos:5)
end.
