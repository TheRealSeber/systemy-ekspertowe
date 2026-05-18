:- module(rough, [
    get_decision/2,
    generate_reducts_and_rules/0,
    find_minimal_rules/0,
    print_indispensable/0,
    process_animal_rules/1, get_attr/3, all_attributes/1
]).

:- use_module(kb).
:- use_module(fuzzy).
:- dynamic dec_rule/3. % dec_rule(Decision, Attributes, Weight)
:- dynamic computed_wielkosc/2. % computed_wielkosc(Animal, Wielkosc)

% 1. Setup Phase
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

all_attributes([wielkosc, dieta, srodowisko, skrzydla, nogi, udomowione, rozrod, futro, klimat, gromada, stadne, kontynent]).

% 2. Rough Set: Greedy Reduct Generation
greedy_reduct(Animal, Reduct) :-
    findall(Y, (animal(Y), Y \= Animal), Others),
    all_attributes(Attrs),
    greedy_reduct_loop(Animal, Others, Attrs, [], RawReduct),
    minimize_reduct(Animal, Others, RawReduct, Reduct).

greedy_reduct_loop(_, [], _, Acc, Acc) :- !.
greedy_reduct_loop(Animal, Undiscerned, Attrs, Acc, Reduct) :-
    find_best_attribute(Animal, Undiscerned, Attrs, BestAttr, DiscernedByBest),
    ( DiscernedByBest = [] ->
        % Nierozróżnialne obiekty! Przerywamy i zwracamy to co mamy jako najlepszy możliwy redukt
        Reduct = Acc
    ;
        subtract(Undiscerned, DiscernedByBest, NewUndiscerned),
        delete(Attrs, BestAttr, RemainingAttrs),
        greedy_reduct_loop(Animal, NewUndiscerned, RemainingAttrs, [BestAttr|Acc], Reduct)
    ).

find_best_attribute(Animal, Undiscerned, Attrs, BestAttr, DiscernedList) :-
    findall(Num-Attr-Discerned, (
        member(Attr, Attrs),
        get_attr(Animal, Attr, V1),
        findall(Y, (member(Y, Undiscerned), get_attr(Y, Attr, V2), V1 \= V2), Discerned),
        length(Discerned, Num)
    ), Candidates),
    sort(1, @>=, Candidates, [BestNum-BestAttr-DiscernedList|_]),
    ( BestNum > 0 -> true
    ; BestAttr = none, DiscernedList = [] % Fail gracefully
    ).
find_best_attribute(_, _, _, none, []). % Fallback

minimize_reduct(_, _, [], []) :- !.
minimize_reduct(Animal, Others, [_A|Rest], MinReduct) :-
    % Check if Rest is enough to discern all Others that CAN be discerned
    is_reduct(Animal, Others, Rest), !,
    minimize_reduct(Animal, Others, Rest, MinReduct).
minimize_reduct(Animal, Others, [A|Rest], [A|MinRest]) :-
    minimize_reduct(Animal, Others, Rest, MinRest).

is_reduct(_, [], _) :- !.
is_reduct(Animal, Others, Attrs) :-
    % Znajdź wszystkie, które MOŻNA odróżnić używając WSZYSTKICH atrybutów
    all_attributes(AllAttrs),
    findall(Y, (
        member(Y, Others),
        member(A, AllAttrs), get_attr(Animal, A, V1), get_attr(Y, A, V2), V1 \= V2
    ), DiscernibleOthers),
    sort(DiscernibleOthers, UniqueDiscernible),
    % Teraz sprawdź czy Attrs odróżnia te same obiekty
    \+ (
        member(Y, UniqueDiscernible),
        \+ (member(A, Attrs), get_attr(Animal, A, V1), get_attr(Y, A, V2), V1 \= V2)
    ).

core_attributes(Animal, Cores) :-
    findall(Y, (animal(Y), Y \= Animal), Others),
    all_attributes(AllAttrs),
    findall(Attr, (
        member(Attr, AllAttrs),
        delete(AllAttrs, Attr, AttrsWithoutA),
        \+ is_reduct(Animal, Others, AttrsWithoutA)
    ), Cores).

generate_reducts_and_rules :-
    setup_attributes,
    retractall(dec_rule(_, _, _)),
    findall(Animal, animal(Animal), Animals),
    maplist(process_animal_rules, Animals).

process_animal_rules(Animal) :-
    greedy_reduct(Animal, Reduct),
    create_rule(Animal, Reduct).

create_rule(Animal, Reduct) :-
    findall(Attr=Val, (member(Attr, Reduct), get_attr(Animal, Attr, Val)), RuleAttrs),
    ( dec_rule(Animal, RuleAttrs, _) -> true
    ; assertz(dec_rule(Animal, RuleAttrs, 1))
    ).

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

print_indispensable :-
    setup_attributes,
    findall(Animal, animal(Animal), Animals),
    findall(Cores, (member(Animal, Animals), core_attributes(Animal, Cores), Cores \= []), IndList),
    flatten(IndList, FlatInd),
    sort(FlatInd, SortedInd),
    write('Atrybuty niezbedne (Core) w calym systemie: '), writeln(SortedInd).

find_minimal_rules :-
    generate_reducts_and_rules,
    findall(RuleAttrs, dec_rule(_, RuleAttrs, _), AllRules),
    sort(AllRules, UniqueRules),
    write('Reguly minimalne wygenerowane pomyslnie.'), nl,
    length(UniqueRules, L),
    write('Liczba unikalnych regul: '), writeln(L),
    write('Przykladowe reguly:'), nl,
    ( AllRules = [R1, R2, R3 | _] ->
        writeln(R1), writeln(R2), writeln(R3)
    ; true ).
