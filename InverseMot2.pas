(* Un algorithme permettant d'inverser un tableau de 7 lettres composant un mot | Methode 2 *)
Program InverseMot;
var
    i : integer;
    memoir, inverse : Array[1..7] of char;
begin
    (* debug var *)
    read(inverse);
    write(inverse);
    write(' -> ');

    (* function *)
    for i := 1 to 3 do
    begin
        memoir[i] := inverse[i];
        inverse[i] := inverse[8-i];
        inverse[8-i] := memoir[i];
    end;

    (* debug *)
    write(inverse);
end.