(* Un algorithme permettant d'inverser un tableau de 7 lettres composant un mot*)
Program InverseMot;
var
    i : integer;
    mot, motInv : Array[1..7] of char;
begin
    (* debug var *)
    readln(mot);
    writeln(' -> ');

    (* function *)
    for i := 1 to 7 do
        motInv[i] := mot[8-i];

    (* debug *)
    write(motInv);
end.