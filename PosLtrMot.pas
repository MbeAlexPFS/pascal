(* Ce code permet de récupérer la position d'une lettre dans un mot , en cas d'absence il retourne 0 *)
program PosLtrMot;
var
    Ltr : char;
    Mot : string;
    Pos, i : integer;
begin
    writeln('Taper une lettre :');
    readln(Ltr);
    writeln('Taper un mot :');
    readln(Mot);
    Pos := 0;
    for i := 1 to Length(Mot) do
        begin
            if Copy(Mot, i, 1) = Ltr then
                begin
                    Pos := i;
                    writeln('La lettre ''',Ltr,''' se trouve a la position ', Pos);   
                end; 
        end;
    if Pos = 0 then
        writeln('La lettre ''',Ltr,''' est absente, elle se trouve donc a la position 0');   
end.