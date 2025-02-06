program Exemple;
var
    a,b : integer;
    c1,c2 : char;
    resultat : boolean;
    x,y : real;
begin
    write('entrez 2 entiers : ');
    readln(a,b); {Lecture des 2 valeurs}
    write('maintenant, entrez une lettre: ');
    readln(c1);
    write('entrez une autre lettre : ');
    readln(c2);
    write('entrez maintenant un reel : ');
    readln(x); {Lecture d'un réel}
    writeln;
    resultat := (a<=b); {resultat prend la valeur de l'expression a<=b}
    writeln('Le 2eme entier est-il inf ou egal au 3eme ? =>', resultat);
    y := sqr(x); {calcul de x au carré}
    writeln('Le carre du reel est : ', y:4:2);
    writeln('ou encore : ', y:8:4); {affichage sur 8 caractères, dont 4 chiffres après la virgule}
    writeln('Le code ASCII de ', c1, ' est : ', ord(c1):4);
    resultat := (c1 > c2); 
    {resultat prend la valeur de l'expression c1 > c2}
    {il est vrai si c1>c2, et faux sinon}
    writeln('Le caractere 1 est-il avant le caractere 2 ? =>', resultat);
    write('Le code de ', c1, ' est : ', ord(c1):4);
    writeln(' et celui de ', c2, ' est: ', ord(c2):4);
end.

