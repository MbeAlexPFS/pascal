(* Ce code permet de comparer 2 caracteres saisis au clavier par l'utilisateur *)
program OrdreLettres;
var 
    a,b : char;
begin
    writeln('Saisissez 2 lettres: ');
    readln(a);
    readln(b);
    if Ord(a) < Ord(b) then
        writeln(a,' < ', b)
    else
        writeln(b,' < ', a);
end.