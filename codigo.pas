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
    while beneficioNeto >= beneficioAnterior do
    begin
        publicidad := publicidad * 2;
        aumentoVentas := ((cantidadVentas)div(2));
        cantidadVentas := cantidadVentas + aumentoVentas;
        plataVentas := cantidadVentas * 30;
        beneficioNeto := plataVentas -publicidad - gastoFijo;
        
        write('Publicidad');  write('Ventas':10);  writeLn('Beneficio Neto':18);
        write(publicidad:8);  write(cantidadVentas:10);  write(beneficioNeto:14);
        beneficioAnterior := beneficioNeto;
    end
end. 