(* Code Pascal permettant la saisie de nom des étudiants, le calcul de leur moyenne (10 notes) et un recapitulatif sous forme de tableau*)
{$codepage UTF8}
program TabEtudiant;
uses
    SysUtils;

const
    Taille_max_etudiant = 4;
    Taille_max_note = 10;
type
    TABNom = array[1..Taille_max_etudiant] of string;
    TABMoyenne = array[1..Taille_max_etudiant] of real;
    TABNote = array[1..Taille_max_note] of real;
    TABEtudiantNote = array[1..Taille_max_etudiant] of TABNote;
var
    etudiant : TABNom;
    notes : TABNote;
    etudiantnotes : TABEtudiantNote;
    etudiantmoyenne : TABMoyenne;
    indice : integer;
    indice2 : integer;

procedure TabLigneStr (arr : Array of string; Largeur : integer; part : integer {1: debut, 2: milieu, 3: fin});
var
    tabindice : integer;
    tabindice2 : integer;
begin
    (* bordure debut *)
    if part = 1 then
    begin
        write('┌');
        for tabindice := 0 to Length(arr) - 1 do
            begin
            for tabindice2 := 0 to Largeur do
                begin
                    write('-');
                end
            end;
        writeln('┐');
    end;    
   
    (* element *)
    if part = 2 then
    begin
        for tabindice := 0 to Length(arr)-1 do
        begin
            write('|', arr[tabindice]);
            for tabindice2 := 0 to (Largeur - Length(arr[tabindice]) - 1) do
                write(' ');
        end;
        writeln(' |');
    end;
    

    (* bordure fin *)
    if part = 3 then
    begin
        write('└');
        for tabindice := 0 to Length(arr) - 1 do
        begin
        for tabindice2 := 0 to Largeur do
            begin
                write('-');
            end;
        end;
        writeln('┘'); 
    end;
   
end;

procedure TabLigneInt (arr : Array of real; Largeur : integer; part : integer {1: debut, 2: milieu, 3: fin});
var
    tabindice : integer;
    tabindice2 : integer;
begin
    (* bordure debut *)
    if part = 1 then
    begin
        write('┌');
        for tabindice := 0 to Length(arr) - 1 do
            begin
            for tabindice2 := 0 to Largeur do
                begin
                    write('-');
                end
            end;
        writeln('┐');
    end;    
   
    (* element *)
    if part = 2 then
    begin
        for tabindice := 0 to Length(arr)-1 do
        begin
            write('|', arr[tabindice]:3:2);
            for tabindice2 := 0 to (Largeur - Length(IntToStr(round(arr[tabindice]))) - 4) do
                write(' ');
        end;
        writeln(' |');
    end;
    

    (* bordure fin *)
    if part = 3 then
    begin
        write('└');
        for tabindice := 0 to Length(arr) - 1 do
        begin
        for tabindice2 := 0 to Largeur do
            begin
                write('-');
            end;
        end;
        writeln('┘'); 
    end;
   
end;

begin
    (* noter les noms des étudiants*)
    for indice := 1 to Taille_max_etudiant do
        etudiant[indice] := '';
        indice := 1;
    repeat
        writeln('entrez le nom de l''étudiant N° ', indice, ':');
        readln(etudiant[indice]);
        (* initialisation moyenne *)
        etudiantmoyenne[indice] := 0;
        (* noter des notes *)
        for indice2 := 1 to Taille_max_note do
            notes[indice2] := 0;
            indice2 := 1;
        repeat
            writeln('entrez sa note N° ', indice2, ':');
            readln(notes[indice2]);
            (* calculer en même temps la moyenne *)
            etudiantmoyenne[indice] := etudiantmoyenne[indice] + notes[indice2];
            indice2 := indice2 + 1;
        until (indice2 > Taille_max_note);
        (* mettre les 10 notes chez l'etudiant *)
        etudiantnotes[indice] := notes;
        (* finaliser la moyenne *)
        etudiantmoyenne[indice] := (etudiantmoyenne[indice]/Taille_max_note);
        writeln('Sa moyenne est : ', etudiantmoyenne[indice]:3:2);
        indice := indice + 1;
    until (indice > Taille_max_etudiant);

    (* Afficher le recapitulatif *)
    writeln('Tableau recapitulatif');
    (* bordure*)
    TabLigneStr(etudiant, 10, 1);

    (* nom *)
    TabLigneStr(etudiant, 10, 2);

    (* moyenne *)
    TabLigneInt(etudiantmoyenne, 10, 2);

    (* bordure*)
    TabLigneStr(etudiant, 10, 3);
end.