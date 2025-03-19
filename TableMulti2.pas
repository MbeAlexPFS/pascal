(* Code Pascal permettant d'afficher une table de multiplication (1 à 10) avec un tableau à 2 dimensions*)
{$codepage UTF8}
program TableMulti2;
uses
    SysUtils;
const
    taille_max = 10;
type
    TAB = Array[1..taille_max,1..taille_max] of integer;
var
    tableau : TAB;
    a,b : integer;

procedure TabLigneInt (arr : Array of integer; Largeur : integer; part : integer {1: debut, 2: milieu, 3: fin});
var
    tabindice : integer;
    tabindice2 : integer;
begin
    (* bordure debut *)
    if part = 1 then
    begin
        write('┌');
        for tabindice := 0 to Length(arr) - 3 do
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
            for tabindice2 := 0 to (Largeur - Length(IntToStr(arr[tabindice])) - 4) do
                write(' ');
        end;
        writeln(' |');
    end;
    

    (* bordure fin *)
    if part = 3 then
    begin
        write('└');
        for tabindice := 0 to Length(arr) - 3 do
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
    (* Afficher le recapitulatif *)
    writeln('Tableau de multiplication de 1 à 10');
    (* bordure*)
    TabLigneInt(tableau[1], 10, 1);
    write('|       ');TabLigneInt([1,2,3,4,5,6,7,8,9,10],10,2);
    writeln('------------------------------------------------------------------------------------------');
    for a := 1 to 10 do
        begin
            for b := 1 to 10 do
                tableau[a,b] := a*b;
            if a < 10 then
                write('|', a,'x     ')
            else
                write('|', a,'x    ');   
            TabLigneInt(tableau[a], 10, 2);
        end;

    (* bordure*)
    TabLigneInt(tableau[1], 10, 3);
end.