homme(ali).
homme(hacene).
homme(mohamed).
homme(said).
homme(samir).

femme(djamila).
femme(fatma).
femme(houria).
femme(linda).

pere(mohamed,samir).
pere(samir,lilia).
pere(samir,sair).
pere(said,hacene).
pere(said,linda).
pere(hakim,ali).

mere(famta,samir).
mere(houria,lilia).
mere(houria,said).
mere(lilia,ali).
mere(djamila,hacene).
mere(djamila,linda).

parent(X,Y):-
    pere(X,Y).

parent(X,Y):-
    mere(X,Y).

fils(X,Y):-
    homme(X),
    parent(Y,X).

fille(X,Y):-
    femme(X),
    parent(Y,X).

enfant(X,Y):-
    parent(Y,X).

grand_pere(X,Y):-
    pere(X,Z),
    parent(Z,Y).

grand_mere(X,Y):-
    mere(X,Z),
    parent(Z,Y).
