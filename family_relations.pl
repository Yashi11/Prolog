% It depicts family relations in prolog...

/*
domains
    name = symbol
predicates
    parent(name,name)
    mother(name,name)
    father(name,name)
    sister(name,name)
    brother(name,name)
    sibling(name,name)
    female(name)
    male(name)
    haschild(name)
    grandparent(name,name)
    aremarried(name,name)
    cousin(name,name)
clauses
*/
    female(rosy).
    female(anne).
    female(lilly).
    female(rita).
    female(alexa).
    male(jefferson).
    male(will).
    male(joseph).
    male(max).
    male(sam).
    male(andrew).
    male(bob).
    male(tom).
    parent(jefferson,anne).
    parent(rosy,joseph).
    parent(jefferson,rita).
    parent(anne,sam).
    sibling(sam,andrew).
    aremarried(joseph,lilly).
    aremarried(jefferson,rosy).
    aremarried(rita,max).
    sibling(tom,alexa).
    parent(tom,rita).
    parent(bob,max).

    mother(X,Y):- parent(X,Y),female(X).
    father(X,Y):-parent(X,Y),male(X).
    haschild(X):-parent(X,_).
    sibling(X,Y):-parent(Z,X),parent(Z,Y).
    sister(X,Y):- sibling(X,Y);sibling(Y,X),female(X).
    brother(X,Y):-sibling(X,Y),male(X).
    grandparent(X,Y):-parent(X,Z),parent(Z,Y).
    cousin(X,Y):-grandparent(Z,X),grandparent(Z,Y).
    parent(X,Y):-parent(Z,Y),aremarried(X,Z).
    aremarried(X,Y):- aremarried(Y,X).


