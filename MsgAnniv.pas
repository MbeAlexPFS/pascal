(* Ce code permet d'envoyer un message particulier à l'utilisateur si son age est inferieur à 3ans *)
program MsgAnniv;
var
    annee_act,annee_nai : integer;
begin
    writeln('Saisissez votre annee actuelle: ');
    readln(annee_act);
    writeln('Saisissez votre annee de naissance: ');
    readln(annee_nai);
    if annee_act - annee_nai < 3 then
        writeln('Votre age est inferieur a 3ans.');
end.