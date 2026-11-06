appartient(X,[X|_]).
appartient(X,[_,Y|L]):-appartient(X,[Y|L]).

premier(X,[X|_]).

dernier(X,[X]).
dernier(X,[_,Y|L]):-dernier(X,[Y|L]).

avant_dernier(X,[X,_]).
avant_dernier(X,[_,Y|L]):-avant_dernier(X,[Y|L]).

suppK(1, [_|L], L):-!.
suppK(K, [X,Y|L1], [X|L2]):-
    K > 1,
    K1 is K-1,
    suppK(K1, [Y|L1], L2).

substitue(_, _, [], []).
substitue(X, Y, [X|L1], [Y|L2]) :-
    !,
    substitue(X, Y, L1, L2).
substitue(X, Y, [Z|L1], [Z|L2]) :-
    substitue(X, Y, L1, L2).

longueur([],0).
longueur([_|L],K):-
    longueur(L,K2),
    K is K2+1.

somme([X],X).
somme([X,Y|L],S):-
    somme([Y|L],S2),
    S is S2+X.

affiche1([]).
affiche1([X]):-
    write(X).
affiche1([X,Y|L]):-
    write(X),
    nl,
    affiche1([Y|L]).

affiche2([]).
affiche2([X]):-
    write(X).
affiche2([X,Y|L]):-
    affiche2([Y|L]),
    nl,
    write(X).

pair([]).
pair([_,_|L]):-
    pair(L).

deux_fois(X, [X|L]) :-
    appartient(X, L).
deux_fois(X, [_|L]) :-
    deux_fois(X, L).

concat([],L,L).
concat([X|L1],L2,[X|L3]):-
    concat(L1,L2,L3).

palidnrome([]).
palindrome([_]).
palindrome([X,Y|L]):-
    dernier(X,[Y|L]),
    longueur([Y|L],K),
    suppK(K,[Y|L],L2),
    palindrome(L2).




