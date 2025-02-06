(* Ce code permet de calculer l'age d'une personne à partir de la saisie de son année de naissance avec possibilité de saisies multiples*)
program Calcage;
var
    annee_nai : integer;
    continuer : boolean;
    choix: char;
const
    annee_act = 2025;
begin
    continuer := true;
    while continuer do
        begin
            writeln('Veuillez saisir votre annee de naissance : ');
            readln(annee_nai);
            if annee_nai < annee_act then
                begin
                    writeln('Vous avez ', annee_act - annee_nai, ' ans.');
                    write('Taper y pour calculer un autre age: ');
                    readln(choix);
                    if not (choix = 'y') then
                        begin
                            writeln('Vous avez decide de quitter le programme en ne tapant pas la lettre cle.');
                            continuer := false;
                        end;

                end
            else
                writeln('L''annee de naissance doit etre inferieur a l''annee actuelle ', annee_act);
        end;
end.
            
        

