(*correction tabetudiant.pas TD2*)
{$codepage UTF8}
program TabEtudiant;
type
    TRed = real; (* Type pour les nombres réels *)
var
    TabEtud : Array[1..4] of string; (* Tableau des noms *)
    TabNotes : Array[1..4,1..5] of TRed; (* Tableau des notes *)
    TabMoy : Array[1..4] of TRed; (* Tableau des moyennes *)
    Note : Tred;
    i , j : integer;
begin
    (* Saisir des données  *)
    for i := 1 to 4 do
    begin
        writeln('Entrer le nom de l''etudiant',i,' : ');
        readln(TabEtud[i]);
        TabMoy[i] := 0;
        for j := 1 to 5 do
        begin
            writeln('Entrer la note N°', j,' pour ', TabEtud[i],' : ');
            readln(Note);
            TabNotes[i][j] := Note;
            TabMoy[i] := TabMoy[i] + Note;
        end;
        TabMoy[i] := TabMoy[i] / 5;
    end;

    (* Affichage du Tableau recapitulatif *)
    writeln;
    writeln('Tableau recapitulatif');
    writeln('---------------------------------------------------');
    writeln(' Nom  |N1    |N2    |N3    |N4    |N5    |Moyenne  ');
    writeln('---------------------------------------------------');
    for i := 1 to 4 do
    begin
        write(TabEtud[i]:5,' |');
        for j := 1 to 5 do
            write(TabNotes[i][j]:5:2,' |');
        writeln(TabMoy[i]:6:2);
    end;
    writeln('---------------------------------------------------');        
end.
