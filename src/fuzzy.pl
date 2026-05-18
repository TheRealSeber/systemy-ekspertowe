:- module(fuzzy, [
    calculate_wielkosc/4
]).

% Funkcje przynależności
trapez(X, A, B, C, D, Val) :-
    ( X =< A -> Val = 0.0
    ; X > A, X =< B -> Val is (X - A) / (B - A)
    ; X > B, X =< C -> Val = 1.0
    ; X > C, X =< D -> Val is (D - X) / (D - C)
    ; Val = 0.0
    ).

l_ksztaltna(X, A, B, Val) :-
    ( X =< A -> Val = 1.0
    ; X > A, X =< B -> Val is (B - X) / (B - A)
    ; Val = 0.0
    ).

r_ksztaltna(X, A, B, Val) :-
    ( X =< A -> Val = 0.0
    ; X > A, X =< B -> Val is (X - A) / (B - A)
    ; Val = 1.0
    ).

% Przynależności atrybutów
ciezar(X, bardzo_lekki, V) :- l_ksztaltna(X, 0.5, 1.0, V).
ciezar(X, lekki, V) :- trapez(X, 0.5, 5.0, 15.0, 25.0, V).
ciezar(X, sredni, V) :- trapez(X, 15.0, 20.0, 50.0, 100.0, V).
ciezar(X, ciezki, V) :- trapez(X, 50.0, 100.0, 400.0, 500.0, V).
ciezar(X, bardzo_ciezki, V) :- r_ksztaltna(X, 500.0, 1000.0, V).

dlugosc(X, bardzo_maly, V) :- l_ksztaltna(X, 10.0, 20.0, V).
dlugosc(X, maly, V) :- trapez(X, 10.0, 15.0, 35.0, 50.0, V).
dlugosc(X, sredni, V) :- trapez(X, 20.0, 30.0, 50.0, 120.0, V).
dlugosc(X, duzy, V) :- trapez(X, 80.0, 200.0, 400.0, 500.0, V).
dlugosc(X, bardzo_duzy, V) :- r_ksztaltna(X, 400.0, 600.0, V).

dlugosc_zycia(X, krotka, V) :- l_ksztaltna(X, 5.0, 15.0, V).
dlugosc_zycia(X, srednia, V) :- trapez(X, 10.0, 15.0, 20.0, 30.0, V).
dlugosc_zycia(X, dluga, V) :- r_ksztaltna(X, 20.0, 30.0, V).

% t-norma (iloczyn) i s-norma
t_norma(A, B, V) :- V is A * B.
s_norma(A, B, V) :- V is A + B - (A * B).

% Reguły wnioskowania rozmytego dla atrybutu 'wielkosc'
% Przyjmujemy uproszczone reguły (ponieważ w dokumencie nie podano precyzyjnych)
fuzzy_rule(bardzo_mala, Ciezar, Dlugosc, _Zycie, V) :-
    ciezar(Ciezar, bardzo_lekki, Vc),
    dlugosc(Dlugosc, bardzo_maly, Vd),
    t_norma(Vc, Vd, V).

fuzzy_rule(mala, Ciezar, Dlugosc, _Zycie, V) :-
    ciezar(Ciezar, lekki, Vc),
    dlugosc(Dlugosc, maly, Vd),
    t_norma(Vc, Vd, V).

fuzzy_rule(srednia, Ciezar, Dlugosc, _Zycie, V) :-
    ciezar(Ciezar, sredni, Vc),
    dlugosc(Dlugosc, sredni, Vd),
    t_norma(Vc, Vd, V).

fuzzy_rule(duza, Ciezar, Dlugosc, _Zycie, V) :-
    ciezar(Ciezar, ciezki, Vc),
    dlugosc(Dlugosc, duzy, Vd),
    t_norma(Vc, Vd, V).

fuzzy_rule(bardzo_duza, Ciezar, Dlugosc, _Zycie, V) :-
    ciezar(Ciezar, bardzo_ciezki, Vc),
    dlugosc(Dlugosc, bardzo_duzy, Vd),
    t_norma(Vc, Vd, V).

fuzzy_rule(niestandardowa, Ciezar, Dlugosc, _Zycie, V) :-
    % Gdzie ciężar i długość mocno się rozmijają
    ciezar(Ciezar, bardzo_ciezki, Vc),
    dlugosc(Dlugosc, bardzo_maly, Vd),
    t_norma(Vc, Vd, V).

% Główny predykat wyliczający wielkość (defuzyfikacja)
calculate_wielkosc(Ciezar, Dlugosc, Zycie, Wielkosc) :-
    findall(V-W, fuzzy_rule(W, Ciezar, Dlugosc, Zycie, V), Results),
    sort(0, @>=, Results, [MaxV-MaxW | _]), % Pobiera z największym V
    ( MaxV > 0 -> Wielkosc = MaxW
    ; Wielkosc = niestandardowa % Domyślna jeśli żaden zbiór nie pasuje
    ).
