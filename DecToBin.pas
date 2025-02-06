(* Ce code permet la conversion d'un nombre decimal saisi au clavier en un nombre binaire *)
program DecToBin;
uses
  SysUtils;
var
    nbrDec : integer;
    nbrBin : string;
begin
    nbrBin := '';
    writeln('Taper un nombre decimal : ');
    readln(nbrDec);
    nbrBin := IntToStr(nbrDec mod 2) + nbrBin;
    while (nbrDec div 2) <> 0 do
        begin
            nbrDec := nbrDec div 2;
            nbrBin := IntToStr(nbrDec mod 2) + nbrBin;
        end;
    writeln('Le nombre binaire est: ', nbrBin);
end.
