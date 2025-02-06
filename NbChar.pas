(* Ce code permet de compter le nombre de caractère dans un mot saisis par l'utilisateur *)
program NbChar;
var 
    mot : string;
    nb : integer;
begin
    writeln('Saisissez un mot: ');
    readln(mot);
    nb := Length(mot);
    writeln('Le nombre de caractere est ', nb);
end.
