
%Contar los elementos de una lista
cuenta_elementos([], 0).
cuenta_elementos([_|L], N) :- cuenta_elementos(L,Tam), N is Tam+1.

%Pruebas
%cuenta_elementos([4,2,7,8,9], N).
%cuenta_elementos([1,2,3,4], N).
%cuenta_elementos([6,2,4,0,1,0], N).

%Sumar los elementos de una lista
suma_lista([],0).
suma_lista([X|L], N) :- suma_lista(L,C), N is C+X.

%Pruebas
%suma_lista([4,7,2], N).
%suma_lista([5,2,6, 3, 4, 20], N).
%suma_lista([7,5,-1], N).