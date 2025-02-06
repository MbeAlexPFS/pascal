(* Ce code permet de faire la somme, le produit et la moyenne de 3 nombres saisies par l'utilisateur*)
program SomProdMoy;
var a,b,c,som,prod,moy : real;
begin
    writeln('Saisissez 3 nombres: ');
    readln(a,b,c);
    som := a+b+c;
    prod := a*b*c;
    moy := (a+b+c)/3;
    writeln('La somme est: ', som:3:2);
    writeln('Le produit est: ', prod:3:2);
    writeln('La moyenne est: ', moy:3:2);
end.
