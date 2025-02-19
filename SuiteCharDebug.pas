{$codepage UTF8}
(* Ce code permet d'afficher une suite de nombres saisie par l'utilisateur ainsi que le nombre de saisies*)
program SuiteCharDebug;
uses
  SysUtils;
var
  Nbr : integer;
  SaisiTotal : integer;
begin
  Nbr := 0;
  saisiTotal := -1;
  writeln('Taper une suite de nombres et taper -1 pour arrêté: ');
  while Nbr <> -1 do
    begin
      readln(Nbr);
      if Nbr <> -1 then
        writeln('Nombre saisi: ', Nbr);
        saisiTotal := saisiTotal + 1;
    end;
  writeln('Le nombre de saisis est: ', saisiTotal);
end.