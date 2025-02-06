(* Ce code affiche la table de multiplication d'un nombre saisi au clavier *)
program TableMulti;
var
    a : integer;
    i : integer;
begin
    writeln('Taper un nombre : ');
    readln(a);
    writeln('La table de multiplication de ', a,' est : ');
    for i := 0 to 10 do
        writeln('> ', a, ' x ', i, ' = ', a*i);
end.
