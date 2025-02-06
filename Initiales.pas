(* Ce code permet d'afficher les initiales d'un nom et prenom saisis au clavier *)
program Initiales;
var 
    nom, prenom : string;
begin
    writeln('Saisissez votre nom: ');
    readln(nom);
    writeln('Saisissez votre prenom: ');
    readln(prenom);
    writeln('Vos initiales sont: ', copy(nom,1,1) + copy(prenom,1,1));
end.