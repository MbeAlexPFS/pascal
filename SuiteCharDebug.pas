(* Ce code permet d'afficher une suite de nombres saisie par l'utilisateur ainsi que le nombre de saisies*)
program SuiteCharDebug;
uses
  SysUtils;
var
  suiteNbr : integer;
begin
    writeln('Taper une suite de nombres: ');
    readln(suiteNbr);
    writeln('La suite est: ', suiteNbr);
    writeln('Le nombre de saisies est: ', Length(IntToStr(suiteNbr)));
end.