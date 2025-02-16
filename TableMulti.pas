(* Ce code affiche la table de multiplication de 1 à 10 *)
program TableMulti;
var
    a,b : integer;
begin
    for a := 1 to 10 do
        begin
            writeln('La table de multiplication de ', a,' est : ');
            for b := 1 to 10 do
                writeln('> ', a, ' x ', b, ' = ', a*b);
        end;
end.
