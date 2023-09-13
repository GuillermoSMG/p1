program repletra;
const 
    punto = '.';
    espacio = ' ';
var 
    actletra, letra, antletra : char;
    veces : integer;
begin 
    write('Ingrese la letra a buscar: '); 
    readLn(letra);  
    write('Ingrese una oracion: ');
    veces := 0;
    read(actletra);
    repeat 
        antletra := actletra;
        read(actletra);
        if ((actletra = punto) or (actletra = espacio)) and (antletra = letra) then
            veces := veces + 1;
    until (actletra = punto);
    WriteLn('La cantidad de palabras terminadas en esa letra es: ', veces)
end.