program distance1;

var 
    x1, x2, y1, y2, distance : real;

function distancia(x1, x2, y1, y2 : real): real;
var 
    dist : real;
begin
    dist := sqrt((sqr(x2-x1))+(sqr(y2-y1)));
    distancia := dist;
end;

begin 
    write('Ingrese valores para x1, y1, x2, y2: ');    read(x1, x2, y1, y2);
    distance := distancia(x1, y1, x2, y2);
    writeLn('La distancia entre los dos puntos es: ',distance:0:4)
end.
