(* code permettant de calculer les 10 premiers factoriels *)
program DixPremFact;
var
    i : integer;
// function factoriel debut
function factoriel(num : integer) : longInt;
var
    result : longInt;
begin
    result := 1;
    while num > 0 do
    begin
        result := result * num;
        num := num - 1;
    end;
    factoriel := result;
end;
// function fin
begin
    writeln('les 10 premiers factoriels sont:');
    for i := 1 to 10 do
    begin
        writeln('> ', i, '! = ', factoriel(i));
    end;
end.