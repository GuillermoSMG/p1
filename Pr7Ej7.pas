(*
 Universidad de la Republica - Facultad de Ingenieria -
 Instituto de Computacion
 Curso Programacion 1

 Practico:  07
 Ejercicio: 07
*)




PROGRAM pr7ej7;
    PROCEDURE raices_polin(a,b,c:Integer; VAR raiz1,raiz2:Real; VAR cant_raices:Integer);
    (* Asumo que a no es 0. *)
    VAR disc: Real;
    BEGIN
        disc := sqr(b) - 4*a*c;
        IF disc > 0 THEN
        BEGIN
            cant_raices := 2;
            raiz1 := (-b + sqrt(disc) ) / (2*a);
            raiz2 := (-b - sqrt(disc) ) / (2*a)
        END
        ELSE IF disc = 0 THEN
        BEGIN
            cant_raices := 1;
            raiz1 := -b / (2*a)
        END
        ELSE
            cant_raices := 0
    END;
VAR
    coef1,coef2,coef3 : Integer;
    raiz1,raiz2 : Real;
    raices_halladas : Integer;
BEGIN
    Write('Ingrese los tres coeficientes del polinomio de segundo grado: ');
    ReadLn(coef1,coef2,coef3);
    raices_polin(coef1,coef2,coef3,raiz1,raiz2,raices_halladas);
    CASE raices_halladas OF
        0: WriteLn('No se encontraron raices.');
        1: WriteLn('Se encontro una raiz: ',raiz1:4:2);
        2: WriteLn('Se encontraron 2 raices: ',raiz1:4:2,' ',raiz2:4:2)
    END
END.


