program matriz1;

const
    N = 3;

type 
    matriz = array [1..N,1..N] of integer;

var 
    m : matriz;
    i, j : integer;
    
begin 
    for i := 1 to N do
        for j := 1 to N do
            read(m[i,j]);
            for i := 1 to N do
            begin
                writeLn();
                for j := 1 to N do
                    write(m[j,i]:0,' ');
            end;
    writeLn()
end.