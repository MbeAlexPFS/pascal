(*tabetudiant.pas TD2*)
{$codepage UTF8}
program TabEtudiant;
const
    MaxEtudiant = 4;
    MaxNote = 5;
var
    TabEtud : Array[1..MaxEtudiant] of string;
    TabNotMoy : Array[1..MaxEtudiant,1..MaxNote+1] of real;
    Note : real;
    i , j : integer;
begin
    (* Saisis des données  *)
    for i := 1 to MaxEtudiant do
    begin
        writeln('Entrer un nom d''etudiant : ');
        readln(TabEtud[i]);
        TabNotMoy[i][1] := 0;
        Note := 0;
        for j := 1 to MaxNote do
        begin
            writeln('Entrer sa note ', j,' : ');
            readln(Note);
            TabNotMoy[i][j] := Note;
            TabNotMoy[i][MaxNote+1] := TabNotMoy[i][MaxNote+1] + Note;
        end;
        TabNotMoy[i][MaxNote+1]:= (TabNotMoy[i][MaxNote+1] / MaxNote);
        writeln('Sa moyenne est ', TabNotMoy[i][MaxNote+1]:3:2);
    end;
    (* Tableau recapitulatif *)
    writeln('> Nom');
    for i := 1 to MaxEtudiant do
        writeln(TabEtud[i]);
    writeln();

    (*En tête*)
    writeln('-------------------------------------------');
    write('N° |');
    for i := 1 to MaxNote do
        write('Note',i,' |');
    writeln('Moyenne |');
    writeln('-------------------------------------------');
    
    (*Notes et Moyennes*)
    for i := 1 to MaxEtudiant do
    begin
        write(i,'  |');
        for j := 1 to MaxNote do
            write(TabNotMoy[i][j]:3:2,' |');
        writeln(TabNotMoy[i][MaxNote+1]:3:2,' |');
    end;
            
end.
