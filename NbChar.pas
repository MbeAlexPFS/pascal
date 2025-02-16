(* Ce code permet de compter le nombre de caractère dans un mot saisis par l'utilisateur *)
program NbChar;
var 
    mot : string;
begin
    writeln('Saisissez un mot: ');
    readln(mot);
    writeln('Le nombre de caractere est ', Length(mot));
end.
