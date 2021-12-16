% It depicts recurssions using family relations in prolog...

/*
domains
    name = symbol
predicates
    parent(name,name)
    predecessor(name,name)
    successor(name,name)
    
clauses
*/
   parent(mom,child).
   parent(dad,child).
   parent(grandma,mom).
   parent(grandpa,mom).
   parent(grandmother,dad).
   parent(grandfather,dad).
   parent(great_grandmother,grandfather).
   parent(great_grandfather,grandfather).
   parent(great_grandma,grandpa).
   parent(great_grandpa,grandpa) . 

    predecessor(X,Z):-parent(X,Z).
    predecessor(X,Z):-parent(X,Y),predecessor(Y,Z).
    successor(X,Y):-parent(Y,X).
    successor(X,Z):-parent(Z,Y),successor(X,Y).
   


