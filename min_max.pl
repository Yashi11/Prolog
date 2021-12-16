max(A,B,A):- A>=B.
max(A,B,B):- B>=A.
min(A,B,A):- max(A,B,B).
min(A,B,B):- max(A,B,A).