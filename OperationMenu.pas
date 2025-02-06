(* Même chose que SomProdMoy.pas mais avec un interface de pilotage par menu*)
program OperationMenu;
var
    choix : integer;
    a,b,c : real;
begin
    writeln('Taper 3 nombres: ');
    readln(a,b,c);
    writeln('Taper 0 pour faire la somme, 1 pour faire le produit et 2 pour faire la moyenne: ');
    readln(choix);
    if choix = 0 then
        writeln('La somme est ', (a+b+c):3:2)
    else if choix = 1 then
        writeln('Le produit est ', (a*b*c):3:2)
    else if choix = 2 then
        writeln('La moyenne est ', ((a+b+c)/3):3:2)
    else
        writeln('Choix invalide');
end.