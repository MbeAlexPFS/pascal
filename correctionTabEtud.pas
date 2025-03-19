(*Version légère de tabetudiant.pas*)
program TabEtudiant;
var
    TabEtud : Array[1..4] of string;
    TabMoy : Array[1..4] of real;
    Note : real;
    i : integer;
    j : integer;
begin
    (* Saisis des données  *)
    for i := 1 to 4 do
    begin
        writeln('Entrer un nom d''etudiant : ');
        readln(TabEtud[i]);
        TabMoy[i] := 0;
        Note := 0;
        for j := 1 to 10 do
        begin
            writeln('Entrer sa note ', j,' : ');
            readln(Note);
            TabMoy[i] := TabMoy[i] + Note;
        end;
        TabMoy[i] := (TabMoy[i] / 10);
        writeln('Sa moyenne est ', TabMoy[i]:3:2);
    end;
    (* Tableau recapitulatif *)
    for i := 1 to 4 do
        write(TabEtud[i], '|');
    writeln();
    for i := 1 to 4 do
        write(TabMoy[i]:3:2, '|');
end.
