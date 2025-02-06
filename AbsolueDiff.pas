(* Ce code permet de recuperer la valeur absolue d'une soustraction entre 2 nombres saisies par l'utilisateur *)
program AbsolueDiff;
var
    a,b : real;
begin
    writeln('Saisissez 2 nombres: ');
    readln(a,b);
    if a-b > 0 then
        writeln('Valeur absolue = ', (a-b):3:2)
    else
        writeln('Valeur absolue = ', (-a+b):3:2);
end.