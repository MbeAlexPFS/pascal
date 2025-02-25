(* Même chose que SomProdMoy.pas mais avec un interface de pilotage par menu*)
program OperationMenu;
var
    choix : integer;
    a,b,c : real;
    running : boolean;
begin
    running := true;
    writeln('Veuillez saisir les 3 nombres pour commencer: ');
    readln(a,b,c);
    while running do
        begin
            writeln('------- MENU DES OPERATIONs -------');
            writeln(('> Taper:'));
            writeln('>> 0: Faire la somme');
            writeln('>> 1: Faire le produit');
            writeln('>> 2: Faire la moyenne');
            writeln('>> 3: Changer Les nombres');
            writeln('>> 4: Sortir');
            writeln('----------------------------------');
            writeln('> Les nombres: ');
            writeln('>> a: ',a:3:2,' | b: ',b:3:2,' | c: ', c:3:2);
            writeln('----------------------------------');
            write('> Votre choix: ');
            readln(choix);
            if choix = 0 then
                begin
                    writeln('----------------------------------');
                    writeln('> Choix: ',choix,' | Objet: Somme | Resultat: ',(a+b+c):3:2);
                end
            else if choix = 1 then
                begin
                    writeln('----------------------------------');
                    writeln('> Choix: ',choix,' | Objet: Produit | Resultat: ',(a*b*c):3:2);
                end
            else if choix = 2 then
                begin 
                    writeln('----------------------------------');
                    writeln('> Choix: ',choix,' | Objet: Moyenne | Resultat: ',((a+b+c)/3):3:2);
                end
            else if choix = 3 then
                begin
                    writeln('----------------------------------');
                    write('> Choix: ',choix,' | Objet: Nombres | Requete: Resaisir les 3 nombres: ');
                    readln(a,b,c);
                end
            else if choix = 4 then
                begin
                    writeln('----------------------------------');
                    writeln('> Choix: ',choix,' | Objet: Fermeture | Message: Fin du programme. ');
                    running := false;
                end
            else
                begin
                    writeln('----------------------------------');
                    writeln('> Choix: ',choix,' | Objet: Inconnu | Message: Choix invalide ');
                end;
            writeln('--------------------------------');
            writeln('--------------------------------');
        end;
end.