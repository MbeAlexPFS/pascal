{$codepage UTF8}
program replaceMot;
var
    i,j : integer;
    pass : boolean;
    oldtext,text : array[1..1000] of char;
    old,now : string;
begin
    writeln('Entrer l''ancien puis le nouveau mot:');
    readln(old);
    readln(now);

    writeln('Entrer l''ancien text:');
    readln(oldtext);

    i := 1;
    repeat
        pass := true;
        for j := 1 to 5 do
        begin
            if not (oldtext[i+j-1] = old[j]) then
                pass := false;
        end;
        if pass = true then
        begin
            for j := 1 to 5 do
            begin
                text[i+j-1] := now[j];
            end;
            i := i + 5;
        end
        else
        begin
            text[i] := oldtext[i];
            i := i + 1; 
        end;  
    until i >= 1000;

    writeln('Nouveau text:');
    writeln(text);
end.