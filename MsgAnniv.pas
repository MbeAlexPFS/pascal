{$codepage UTF8}
(* Ce code permet d'envoyer un message particulier à l'utilisateur si son age est inferieur à 3ans *)
program MsgAnniv;
var
    annee_act,annee_nai : integer;
begin
    writeln('Saisissez votre année actuelle: ');
    readln(annee_act);
    writeln('Saisissez votre année de naissance: ');
    readln(annee_nai);
    if annee_act - annee_nai < 3 then
        writeln('Votre age est inférieur à 3ans.');
end.