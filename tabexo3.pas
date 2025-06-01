(* un exercice qui explore à la fois les tableaux et les types*)
{$codepage UTF8}
program tabexo3;
type
    montypetab = Array[1..100] of integer;
const
    maxTab = 100;
var
    tab : montypetab;
//debut procedure
procedure remplirTab;
var
    i : integer;
begin
    for i := 1 to maxTab do
    begin
        writeln('taper la valeur n°',i,' du tableau :');
        readln(tab[i]);
    end;
end;
//fin procedure
//debut fonction
function egalNb (num : integer) : integer;
var
    total, i : integer;
begin
    total := 0;
    for i := 1 to maxTab do
    begin
        if tab[i] = num then
            total := total + 1;    
    end;
    egalNb := total
end;
//fin fonction
//debut fonction
function sommeTab() : integer;
var
    somme, i : integer;
begin
    somme := 0;
    for i := 1 to maxTab do
    begin
        somme := somme + tab[i]
    end;
    sommeTab := somme
end;
//fin fonction
//debut fonction
function moyTab() : Extended;
begin
    moyTab := (sommeTab() / maxTab);
end;
//fin fonction
//bloc principal
begin
    writeln('> Remplissage du tableau');
    remplirTab();
    writeln('> Le nombre de valeurs égal 0 est ', egalNb(0) );
    writeln('> La moyenne des valeurs du tableau est ', moyTab():3:2 );
end.