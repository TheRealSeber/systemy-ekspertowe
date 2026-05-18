:- module(rough, [
    get_decision/2,
    generate_reducts_and_rules/0,
    find_minimal_rules/0,
    print_indispensable/0,
    process_animal_rules/1, get_attr/3, all_attributes/1
]).

:- use_module(library(lists)).
:- use_module('kb').
:- use_module('fuzzy').
:- dynamic dec_rule/3.          % dec_rule(Decision, Attributes, Weight)
:- dynamic computed_wielkosc/2. % computed_wielkosc(Animal, Wielkosc)
:- dynamic consistent_animal/1. % consistent_animal(Animal)

% ============================================================
% 1. Faza inicjalizacji
% ============================================================

setup_attributes :-
    retractall(computed_wielkosc(_, _)),
    findall(Animal, animal(Animal), Animals),
    maplist(compute_and_store_wielkosc, Animals).

compute_and_store_wielkosc(Animal) :-
    continuous_attribute(Animal, ciezar, C),
    continuous_attribute(Animal, dlugosc, D),
    continuous_attribute(Animal, dlugosc_zycia, Z),
    calculate_wielkosc(C, D, Z, W),
    assertz(computed_wielkosc(Animal, W)).

get_attr(Animal, wielkosc, Val) :- computed_wielkosc(Animal, Val), !.
get_attr(Animal, Attr, Val) :- attribute(Animal, Attr, Val).

% Atrybuty warunkowe A (zgodnie z dokumentem, sekcja 5)
all_attributes([wielkosc, dieta, srodowisko, skrzydla, nogi, udomowione, rozrod, futro, klimat, gromada, stadne, kontynent]).

% ============================================================
% 2. Relacja nierozroznialnosci IND(B) (sekcja 5.1)
%    IND(B) = {(x,y) in U x U : forall a in B, a(x) = a(y)}
% ============================================================

% indiscernible(+X, +Y, +Attrs)
% Prawdziwe gdy obiekty X i Y sa nierozroznialne wzgledem atrybutow Attrs
indiscernible(X, Y, Attrs) :-
    \+ (
        member(A, Attrs),
        get_attr(X, A, V1),
        get_attr(Y, A, V2),
        V1 \= V2
    ).

% equivalence_class(+Animal, +Attrs, +Universe, -Class)
% [x]_B = {y in U : (x,y) in IND(B)}
equivalence_class(Animal, Attrs, Universe, Class) :-
    findall(Y, (
        member(Y, Universe),
        indiscernible(Animal, Y, Attrs)
    ), Class).

% all_equivalence_classes(+Universe, +Attrs, -Classes)
% Wyznacza wszystkie klasy abstrakcji U/IND(B)
all_equivalence_classes(Universe, Attrs, Classes) :-
    eq_classes_acc(Universe, Attrs, Universe, [], Classes).

eq_classes_acc([], _, _, Acc, Acc).
eq_classes_acc([A|Rest], Attrs, Universe, Acc, Classes) :-
    ( already_classified(A, Acc) ->
        eq_classes_acc(Rest, Attrs, Universe, Acc, Classes)
    ;
        equivalence_class(A, Attrs, Universe, Class),
        eq_classes_acc(Rest, Attrs, Universe, [Class|Acc], Classes)
    ).

already_classified(A, Classes) :-
    member(Class, Classes),
    member(A, Class), !.

% ============================================================
% 3. Przyblizenie dolne i gorne (sekcja 5.2)
%    B(X) = {Y in U/IND(B) : Y subset X}  (dolne)
%    B_gorne(X) = {Y in U/IND(B) : Y intersect X != empty}  (gorne)
% ============================================================

% lower_approximation(+TargetSet, +EqClasses, -Lower)
lower_approximation(TargetSet, EqClasses, Lower) :-
    findall(Class, (
        member(Class, EqClasses),
        subset_list(Class, TargetSet)
    ), LowerClasses),
    append(LowerClasses, Lower0),
    sort(Lower0, Lower).

% upper_approximation(+TargetSet, +EqClasses, -Upper)
upper_approximation(TargetSet, EqClasses, Upper) :-
    findall(Class, (
        member(Class, EqClasses),
        intersects(Class, TargetSet)
    ), UpperClasses),
    append(UpperClasses, Upper0),
    sort(Upper0, Upper).

subset_list([], _).
subset_list([H|T], Set) :- member(H, Set), subset_list(T, Set).

intersects(List, Set) :- member(X, List), member(X, Set), !.

% ============================================================
% 4. Niespojnosc - metoda jakosciowa (sekcja 5.3)
%    gamma_B(X) = |B(X)| / |U|   (dokladnosc przyblizenia dolnego)
%    Usuwamy obiekt dla ktorego dokladnosc przyblizenia dolnego
%    jest mniejsza.
% ============================================================

remove_inconsistencies :-
    retractall(consistent_animal(_)),
    findall(Animal, animal(Animal), Animals),
    all_attributes(Attrs),
    remove_inconsistencies_loop(Animals, Attrs).

remove_inconsistencies_loop(Animals, Attrs) :-
    find_inconsistent_pairs(Animals, Attrs, Conflicts),
    ( Conflicts = [] ->
        maplist(assert_consistent, Animals)
    ;
        find_worst_object(Animals, Attrs, Conflicts, Worst),
        delete(Animals, Worst, Remaining),
        remove_inconsistencies_loop(Remaining, Attrs)
    ).

% Znajduje pary nierozroznialnych obiektow o roznych decyzjach
find_inconsistent_pairs(Animals, Attrs, Conflicts) :-
    findall(X-Y, (
        member(X, Animals), member(Y, Animals),
        X @< Y,
        indiscernible(X, Y, Attrs)
    ), Conflicts).

% Wybiera obiekt o najnizszej dokladnosci przyblizenia dolnego
find_worst_object(Animals, Attrs, Conflicts, Worst) :-
    findall(A, (member(A-_, Conflicts) ; member(_-A, Conflicts)), ConflictAnimals0),
    sort(ConflictAnimals0, ConflictAnimals),
    length(Animals, U_size),
    all_equivalence_classes(Animals, Attrs, EqClasses),
    findall(Quality-A, (
        member(A, ConflictAnimals),
        lower_approximation([A], EqClasses, Lower),
        length(Lower, LowerSize),
        Quality is LowerSize / U_size
    ), Qualities),
    sort(1, @=<, Qualities, [_-Worst|_]).

assert_consistent(A) :- assertz(consistent_animal(A)).

% ============================================================
% 5. Macierz nierozroznialnosci (sekcja 5.5.1)
%    M_ij = {a in A : a(x_i) != a(x_j)}
% ============================================================

% discernibility_entry(+X, +Y, +Attrs, -Entry)
discernibility_entry(X, Y, Attrs, Entry) :-
    findall(A, (
        member(A, Attrs),
        get_attr(X, A, V1),
        get_attr(Y, A, V2),
        V1 \= V2
    ), Entry).

% Macierz nierozroznialnosci dla calego zbioru obiektow
full_discernibility_matrix(Animals, Attrs, Matrix) :-
    findall(Entry, (
        member(X, Animals), member(Y, Animals),
        X @< Y,
        discernibility_entry(X, Y, Attrs, Entry),
        Entry \= []
    ), Matrix).

% Uogolniona macierz nierozroznialnosci wzgledem decyzji (sekcja 5.5.1/5.6)
% Dla obiektu x_i: wpisy M*_ij tylko dla obiektow x_j z inna decyzja
decision_discernibility_matrix(Animal, Animals, Attrs, Matrix) :-
    findall(Entry, (
        member(Y, Animals),
        Y \= Animal,
        discernibility_entry(Animal, Y, Attrs, Entry),
        Entry \= []
    ), Matrix).

% ============================================================
% 6. Atrybuty niezbedne i jadro systemu CORE(B) (sekcja 5.4)
%    Atrybut a jest zbedny jesli IND(B) = IND(B \ {a})
%    W przeciwnym razie jest niezbedny.
%    CORE(B) = zbior wszystkich niezbednych atrybutow
%    Rownowazne: CORE = suma singletonow macierzy nierozroznialnosci
% ============================================================

% core_from_matrix(+Matrix, -Core)
% Core = zbior atrybutow wystepujacych jako jedyne w jakims wpisie macierzy
core_from_matrix(Matrix, Core) :-
    findall(A, (
        member(Entry, Matrix),
        Entry = [A]
    ), Core0),
    sort(Core0, Core).

% core_global(+Animals, +Attrs, -Core)
core_global(Animals, Attrs, Core) :-
    full_discernibility_matrix(Animals, Attrs, Matrix),
    core_from_matrix(Matrix, Core).

% Alternatywna weryfikacja: atrybut a jest niezbedny jesli IND(B) != IND(B\{a})
core_attributes_verify(Animals, Attrs, Core) :-
    findall(Attr, (
        member(Attr, Attrs),
        delete(Attrs, Attr, AttrsWithout),
        \+ same_indiscernibility(Animals, Attrs, AttrsWithout)
    ), Core).

same_indiscernibility(Animals, Attrs1, Attrs2) :-
    \+ (
        member(X, Animals), member(Y, Animals),
        X \= Y,
        ( (indiscernible(X, Y, Attrs1), \+ indiscernible(X, Y, Attrs2))
        ; (indiscernible(X, Y, Attrs2), \+ indiscernible(X, Y, Attrs1))
        )
    ).

% ============================================================
% 7. Redukty (sekcja 5.5)
%    Redukt C subset B jest minimalny i posiada niepuste
%    przeciecie z kazdym niepustym elementem macierzy nierozroznialnosci.
% ============================================================

% find_reduct(+Matrix, +AllAttrs, -Reduct)
% Wyznacza redukt metoda zachlanna: zaczynamy od jadra,
% dodajemy atrybuty pokrywajace najwiecej niepokrytych wpisow
find_reduct(Matrix, AllAttrs, Reduct) :-
    core_from_matrix(Matrix, Core),
    uncovered_entries(Matrix, Core, Uncovered),
    ( Uncovered = [] ->
        Reduct = Core
    ;
        subtract(AllAttrs, Core, Remaining),
        greedy_cover(Uncovered, Remaining, Core, Covered),
        minimize_reduct(Matrix, Covered, Core, Reduct)
    ).

% uncovered_entries(+Matrix, +Attrs, -Uncovered)
% Wpisy macierzy niepokryte przez zaden atrybut z Attrs
uncovered_entries(Matrix, Attrs, Uncovered) :-
    findall(Entry, (
        member(Entry, Matrix),
        \+ (member(A, Entry), member(A, Attrs))
    ), Uncovered).

% greedy_cover(+Uncovered, +CandidateAttrs, +Acc, -Result)
% Zachlannie dodaje atrybuty pokrywajace najwiecej niepokrytych wpisow
greedy_cover([], _, Acc, Acc) :- !.
greedy_cover(_, [], Acc, Acc) :- !.
greedy_cover(Uncovered, Candidates, Acc, Result) :-
    findall(Count-Attr, (
        member(Attr, Candidates),
        findall(E, (member(E, Uncovered), member(Attr, E)), CoveredEntries),
        length(CoveredEntries, Count)
    ), Scores),
    sort(1, @>=, Scores, [BestCount-BestAttr|_]),
    ( BestCount =:= 0 ->
        Result = Acc
    ;
        uncovered_entries(Uncovered, [BestAttr], StillUncovered),
        delete(Candidates, BestAttr, NewCandidates),
        greedy_cover(StillUncovered, NewCandidates, [BestAttr|Acc], Result)
    ).

% minimize_reduct(+Matrix, +Reduct, +Core, -MinReduct)
% Probuje usunac kazdy atrybut spoza jadra - jesli redukt nadal pokrywa
% cala macierz, to atrybut jest zbedny
minimize_reduct(Matrix, Reduct, Core, MinReduct) :-
    subtract(Reduct, Core, NonCore),
    try_remove(Matrix, Reduct, NonCore, MinReduct).

try_remove(_, Current, [], Current) :- !.
try_remove(Matrix, Current, [A|Rest], MinReduct) :-
    delete(Current, A, Without),
    ( covers_all_entries(Matrix, Without) ->
        try_remove(Matrix, Without, Rest, MinReduct)
    ;
        try_remove(Matrix, Current, Rest, MinReduct)
    ).

% covers_all_entries(+Matrix, +Attrs)
% Sprawdza czy Attrs pokrywa kazdy niepusty wpis macierzy
covers_all_entries(Matrix, Attrs) :-
    \+ (
        member(Entry, Matrix),
        Entry \= [],
        \+ (member(A, Entry), member(A, Attrs))
    ).

% ============================================================
% 8. Reguly minimalne - algorytm Pawlaka i Skowrona (sekcja 5.6)
%    a1(x)=v1 ^ a2(x)=v2 ^ ... ^ ak(x)=vk => dec(x)=d
%
%    1. Usuwamy niespojnosci z tablicy decyzyjnej DT (metoda jakosciowa)
%    2. Tworzymy macierz nierozroznialnosci
%    3. Dla kazdej wartosci atrybutu decyzyjnego d in V_d:
%       - Tworzymy uogolniona macierz nierozroznialnosci wzgledem decyzji
%       - Wyznaczamy funkcje nierozroznialnosci i minimalizujemy ja
%       - Zapisujemy regule decyzyjna
% ============================================================

generate_reducts_and_rules :-
    setup_attributes,
    retractall(dec_rule(_, _, _)),
    retractall(consistent_animal(_)),
    % Krok 1: Usuwanie niespojnosci metoda jakosciowa
    remove_inconsistencies,
    findall(Animal, consistent_animal(Animal), Animals),
    all_attributes(Attrs),
    % Krok 2-3: Dla kazdego obiektu generujemy reguly
    maplist(generate_rules_for_animal(Animals, Attrs), Animals).

generate_rules_for_animal(Animals, Attrs, Animal) :-
    % Krok 3a: Uogolniona macierz nierozroznialnosci wzgledem decyzji
    decision_discernibility_matrix(Animal, Animals, Attrs, Matrix),
    ( Matrix = [] ->
        true
    ;
        % Krok 3b: Wyznaczanie i minimalizacja funkcji nierozroznialnosci (redukt)
        find_reduct(Matrix, Attrs, Reduct),
        % Krok 3c: Zapis reguly decyzyjnej
        create_rule(Animal, Reduct)
    ).

process_animal_rules(Animal) :-
    findall(A, consistent_animal(A), Animals),
    all_attributes(Attrs),
    decision_discernibility_matrix(Animal, Animals, Attrs, Matrix),
    ( Matrix = [] -> true
    ; find_reduct(Matrix, Attrs, Reduct),
      create_rule(Animal, Reduct)
    ).

create_rule(Animal, Reduct) :-
    findall(Attr=Val, (member(Attr, Reduct), get_attr(Animal, Attr, Val)), RuleAttrs),
    sort(RuleAttrs, SortedAttrs),
    ( dec_rule(Animal, SortedAttrs, _) -> true
    ; assertz(dec_rule(Animal, SortedAttrs, 1))
    ).

% ============================================================
% 9. Klasyfikacja - dopasowanie regul
% ============================================================

get_decision(UserAttrs, PredictedDecision) :-
    findall(Decision, (
        dec_rule(Decision, RuleAttrs, _),
        subset(RuleAttrs, UserAttrs)
    ), Decisions),
    count_frequencies(Decisions, Freqs),
    sort(2, @>=, Freqs, [PredictedDecision-_ | _]).

count_frequencies([], []).
count_frequencies([H|T], [H-N|Res]) :-
    count_occurrences(H, [H|T], N),
    delete([H|T], H, Rest),
    count_frequencies(Rest, Res).

count_occurrences(_, [], 0).
count_occurrences(X, [X|T], N) :- count_occurrences(X, T, N1), N is N1 + 1, !.
count_occurrences(X, [_|T], N) :- count_occurrences(X, T, N).

% ============================================================
% 10. Funkcje analizy bazy wiedzy
% ============================================================

% Wyswietla atrybuty niezbedne (jadro systemu CORE(B))
print_indispensable :-
    setup_attributes,
    retractall(consistent_animal(_)),
    remove_inconsistencies,
    findall(Animal, consistent_animal(Animal), Animals),
    all_attributes(Attrs),
    core_global(Animals, Attrs, Core),
    write('Atrybuty niezbedne (Core) w calym systemie: '), writeln(Core),
    % Weryfikacja alternatywna metoda
    core_attributes_verify(Animals, Attrs, CoreVerify),
    write('Weryfikacja (metoda IND): '), writeln(CoreVerify).

% Generuje i wyswietla reguly minimalne
find_minimal_rules :-
    generate_reducts_and_rules,
    findall(dec_rule(D, R, W), dec_rule(D, R, W), AllRules),
    length(AllRules, L),
    write('Reguly minimalne wygenerowane pomyslnie.'), nl,
    write('Liczba regul: '), writeln(L),
    write('Przykladowe reguly:'), nl,
    ( AllRules = [R1, R2, R3 | _] ->
        print_rule(R1), print_rule(R2), print_rule(R3)
    ; maplist(print_rule, AllRules)
    ).

print_rule(dec_rule(Decision, Attrs, _Weight)) :-
    write('  '),
    print_conditions(Attrs),
    write(' => '), writeln(Decision).

print_conditions([]) :- !.
print_conditions([A=V]) :- !,
    write(A), write('='), write(V).
print_conditions([A=V|Rest]) :-
    write(A), write('='), write(V), write(' ^ '),
    print_conditions(Rest).
