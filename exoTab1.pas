(* Algorithme permettant de trouver le grand nombre parmis 10 et son indice *)
{$codepage UTF8}
program MaxRang;
var
    i, rang : integer;
    max : real;
    Tab : Array[1..10] of real;
begin
    (* saisie de valeur dans un tableau quelconque *)
    for i := 1 to 10 do
    begin
        writeln('Entrer la valeur n°',i,' : ');
        readln(Tab[i]);
    end;

    (* Recherche de Maxi(>) ou de Mini(<) *)
    max := Tab[1];
    rang := 1;
    for i := 2 to 10 do
    begin
        if Tab[i] > max then
        begin
            max := Tab[i];
            rang := i;
        end;
    end;

    (* affichage *)
    writeln('La maximale est ',max:3:2 ,' et sa position est ', rang);
end.