(* Algorithme determinant le nombre de notes sur 20 supérieures ou égales à 10 sur 10 utilisateurs*)
{$codepage UTF8}
program NotMoy;
var
    i, nbnote : integer;
    Tab : array[1..10] of integer;
begin
    for i := 1 to 10 do
    begin
        writeln('Entrer la note n°',i,' comprise entre 0 et 20 :');
        readln(Tab[i]);
    end;
    nbnote := 0;1
    for i := 1 to 10 do
    begin
        if Tab[i] >= 10 then
            nbnote := nbnote + 1;
    end;
    writeln('Le nombre de notes supérieures ou égales à 10 est: ', nbnote);
end.