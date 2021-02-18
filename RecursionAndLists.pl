% Task 1
prepend([], E, E).
prepend(L, E, [E|L]).

% Task 2
addElement([], E, [E]).
addElement([H|T], E, [H|ExtendedTail]):- addElement(T, E, ExtendedTail).

% Task 3
hasLength([], 0).
hasLength([_|T], N):- hasLength(T,X), N is X + 1.

% Task 4
remove([], _, []).
remove([E|T], E, T).
remove([H|T], E, [H|ReducedTail]):- remove(T, E, ReducedTail).