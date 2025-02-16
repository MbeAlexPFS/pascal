(* Ce code permet de récupérer le nombre d'occurrences d'une lettre dans un mot *)
program Occurltr;
var
    Ltr : char;
    Mot : string;
    Occur, i : integer;
begin
    writeln('Taper une lettre :');
    readln(Ltr);
    writeln('Taper un mot :');
    readln(Mot);
    Occur := 0;
    for i := 1 to Length(Mot) do
        begin
            if Copy(Mot, i, 1) = Ltr then
                Occur := Occur + 1;
        end;
    writeln('Le nombre d''occurrences est ', Occur);
end.