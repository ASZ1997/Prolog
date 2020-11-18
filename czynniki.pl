czynniki1(Liczba, Dzielnik, Wynik):-czynniki1(Liczba, Dzielnik, Wynik,[]),!.
czynniki1(1,_,Wynik,Wynik):-!.
czynniki1(Liczba,Dzielnik,Wynik, Aku):-
    Dzielnik=< Liczba, 0 is Liczba mod Dzielnik, Liczba1 is Liczba/Dzielnik, append(Aku, [Dzielnik], Aku1),czynniki1(Liczba1,Dzielnik,Wynik,Aku1).
czynniki1(Liczba, Dzielnik, Wynik, Aku):-
    Dzielnik < Liczba, Aku1 is Liczba mod Dzielnik, Aku1\=0, Dzielnik1 is Dzielnik+1, czynniki1(Liczba, Dzielnik1, Wynik, Aku).
