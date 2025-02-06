(* Ce code permet à un robot de faire une action en fonction de la couleur d'un feux de circulation saisie par l'utilisateur *)
program RobotMouv;
var
    couleurFeu : string;
begin
    writeln('Saisissez une couleur: ');
    readln(couleurFeu);
    if couleurFeu = 'vert' then
        writeln('Action: passer')
    else if couleurFeu = 'orange' then
        writeln('Action: ralentir')
    else if couleurFeu = 'rouge' then
        writeln('Action: se stoper ')
    else
        writeln('Reponse incorrecte'); 
        
end.