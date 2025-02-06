(* Ce code permet de resoudre une equation du 1er degré à partir de la saisie de 2 nombres*)
program EquaPremDgr;
var
    a,b : real;
begin
    writeln('Taper 2 nombres a et b pour l''equation ax+b: ');
    readln(a,b);
    if a = 0 then
        writeln('Il n''y''a pas de solutions.')
    else
        writeln('La solution est: ', (-b/a):3:2);
end.