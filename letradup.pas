program letraup;

const 
    fin = '$';

var 
    previous, next : char;

begin
    read (previous);
    while (previous <> fin) do
    begin 
        read(next); 
        if ('a' <= previous) and (previous <= 'z') and (previous = next)
            then write(previous, previous,' ');
        previous := next
    end;
    writeLn()
end.    
