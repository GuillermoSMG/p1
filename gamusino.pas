program gamusinos;
 
var 
    aumentoVentas, cantidadVentas, plataVentas, beneficioNeto, publicidad, gastoFijo, beneficioAnterior : integer;
 
begin
    cantidadVentas := 20;
    plataVentas := cantidadVentas * 30;
    publicidad := 200;
    gastoFijo := 100;
    beneficioNeto := 300;
    beneficioAnterior := beneficioNeto;
    write('Publicidad');  write('Ventas':10);  writeLn('Beneficio Neto':18);
    while beneficioNeto >= beneficioAnterior do
    begin
        write(publicidad:6);  write(cantidadVentas:12);  writeLn(beneficioNeto:14);
        publicidad := publicidad * 2;
        aumentoVentas := ((cantidadVentas)div(2));
        cantidadVentas := cantidadVentas + aumentoVentas;
        plataVentas := cantidadVentas * 30;
        beneficioNeto := plataVentas -publicidad - gastoFijo;
    end;
end. 
 