{$codepage UTF8}
(* Ce code permet la conversion d'un nombre decimal saisi au clavier en un nombre binaire *)
program DecToBin;
uses
  SysUtils;
var
    nbrDec : integer;
    nbrBin : string;
begin
    nbrBin := '';
    writeln('Taper un nombre décimal : ');
    readln(nbrDec);
    while nbrDec > 0 do
        begin
            nbrBin := IntToStr(nbrDec mod 2) + nbrBin;
            nbrDec := nbrDec div 2;
        end;
    writeln('Le nombre binaire est: ', nbrBin);
end.
