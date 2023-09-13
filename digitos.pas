program digits;

const 
    N = 5;

type 
    Digito = '0'..'9';
    Digitos = array [1..N] of Digito;

var 
    arreglo : Digitos;

procedure Lectura(var arreglo : Digitos);
var i : integer; d : Digito;
begin
    write('Ingrese ',N:0,' digitos sin espacios entre ellos: ');
    for i := 1 to N do
    begin
        read(d);
        arreglo[i] := d;
    end;
end;

function Potencia(base, exponente : integer):integer;
{(base<>0) or (exponente>0)}
var pot, i : integer;
begin
    pot:= 1;
    for i:= 1 to exponente do
         pot:= pot * base;
    potencia:= pot;
end;

function Conversion(arreglo : Digitos):integer;
var i, entero : integer;

    function Convertir (d : Digito) : Integer;
    begin
        Convertir := ord(d) - ord('0');
    end;
begin
    entero := Convertir(arreglo[N]);
    for i := N-1 downto 1 do
    begin
      entero := entero + Convertir(arreglo[i]) * potencia(10,(N-i));
    end;
   Conversion := entero;
end;

begin
    Lectura (arreglo);
    writeln ('El numero entero correspondiente es: ',Conversion(arreglo):0)
end.