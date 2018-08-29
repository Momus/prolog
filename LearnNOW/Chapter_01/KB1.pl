%  Chapter 1 Examples,
%!  KB 1 and 2
woman(mia).
woman(jody).
woman(yolanda).

party.

happy(yolanda).
happy(vincent).

listens2Music(mia).
listens2Music(yolanda) :- happy(yolanda).
listens2Music(butch).

playsAirGuitar(jody).
playsAirGuitar(mia) :- listens2Music(mia).
playsAirGuitar(yolanda) :- listens2Music(yolanda).

%! KB 3
playsAirGuitar(vincent):-
    listens2Music(vincent),
    happy(vincent).
playsAirGuitar(butch):-
    happy(butch).
playsAirGuitar(butch):-
    listens2Music(butch).

%! KB 4
loves(vincent, mia).
loves(marsellus,mia).
loves(pumpkin, honey_bunny).
loves(honey_bunny, pumpkin).

%! KB 5
jealous(X,Y):- loves(X,Z), loves(Y,Z).
