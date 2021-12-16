% Prolog Program to find equivalent resistance of a circuit
series(X,Y,Z):- Z is (X+Y).
parallel(X,Y,Z):- Z is ((X*Y)/(X+Y)).
/*
For my circuit :-
        ____________mmm(30 Ohms)____________
        |                                  |
        |____mmm(10 Ohms)____mmm(12 Ohms)__|
        |_____mmm(40 )hms)_|

parallel(10,40,X),series(X,12,Y),parallel(Y,30,Z).

X = 8.0
Y = 20.0
Z = 12.0
This is our required equivalent resistance is 12 Ohms.
*/
