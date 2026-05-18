:- module(ui, [
    start_expert_system/0
]).

:- use_module(kb).
:- use_module(rough).
:- use_module(fuzzy).

:- dynamic known/3. % known(Attr, Op, Val) e.g. known(skrzydla, =, tak)

start_expert_system :-
    write('-----------------------------------------'), nl,
    write('System Ekspertowy - Identyfikacja Zwierzat'), nl,
    write('-----------------------------------------'), nl,
    % 1. Setup KB and generate rules
    write('Inicjalizacja bazy wiedzy i wnioskowanie rough sets...'), nl,
    rough:generate_reducts_and_rules,
    write('Gotowe. Rozpoczynamy dialog.'), nl,
    retractall(known(_, _, _)),
    rough:all_attributes(_AllAttrs),
    findall(A, animal(A), AllAnimals),
    rough:all_attributes(AllAttrs),
    ask_loop(AllAttrs, AllAnimals).

ask_loop(_, [Winner]) :-
    !,
    write('-----------------------------------------'), nl,
    write('Zidentyfikowane zwierze to: '), writeln(Winner),
    % Możemy potwierdzić przez głosowanie reguł rough sets
    findall(Attr=Val, known(Attr, =, Val), UserFacts),
    rough:get_decision(UserFacts, Dec),
    write('Decyzja z modulu Rough Set: '), writeln(Dec),
    write('-----------------------------------------'), nl.

ask_loop([], Animals) :-
    !,
    write('-----------------------------------------'), nl,
    write('Brak wiecej pytan. Mozliwe zwierzeta: '), writeln(Animals),
    % Rough set dec
    findall(Attr=Val, known(Attr, =, Val), UserFacts),
    rough:get_decision(UserFacts, Dec),
    write('Decyzja z modulu Rough Set (najwiecej glosow): '), writeln(Dec),
    write('-----------------------------------------'), nl.

ask_loop(AvailableAttrs, PossibleAnimals) :-
    % Wybierz atrybut o największej mocy dyskryminacyjnej
    best_attribute_to_ask(AvailableAttrs, PossibleAnimals, BestAttr),
    ( BestAttr = none ->
        ask_loop([], PossibleAnimals)
    ;
        ask_question(BestAttr, PossibleAnimals, NewPossibleAnimals),
        delete(AvailableAttrs, BestAttr, NewAvailableAttrs),
        ask_loop(NewAvailableAttrs, NewPossibleAnimals)
    ).

% Szukanie atrybutu o najlepszym zysku informacyjnym (entropy)
best_attribute_to_ask(Attrs, Animals, BestAttr) :-
    findall(Score-Attr, (
        member(Attr, Attrs),
        evaluate_attribute(Attr, Animals, Score)
    ), Scores),
    ( Scores = [] -> BestAttr = none
    ; sort(1, @=<, Scores, [MinScore-BestAttr|_]), % @=< bo minimalizujemy entropię
      MinScore < 999 -> true
    ; BestAttr = none
    ).

evaluate_attribute(Attr, Animals, Entropy) :-
    findall(Val, (member(A, Animals), rough:get_attr(A, Attr, Val)), Vals),
    ( Vals = [] -> Entropy = 1000
    ; list_to_set(Vals, UniqueVals),
      length(UniqueVals, UVL),
      ( UVL =< 1 -> Entropy = 1000 % Bezużyteczny atrybut
      ; calculate_entropy(Vals, UniqueVals, Entropy)
      )
    ).

calculate_entropy(Vals, UniqueVals, Entropy) :-
    length(Vals, Total),
    calculate_entropy_loop(UniqueVals, Vals, Total, 0, Entropy).

calculate_entropy_loop([], _, _, Acc, Acc).
calculate_entropy_loop([V|Rest], Vals, Total, Acc, Entropy) :-
    count_occurrences(V, Vals, Count),
    P is Count / Total,
    Term is -P * log(P),
    NewAcc is Acc + Term,
    calculate_entropy_loop(Rest, Vals, Total, NewAcc, Entropy).

attr_question(dieta, 'Jaka jest glowna dieta zwierzecia?').
attr_question(srodowisko, 'W jakim srodowisku zyje to zwierze?').
attr_question(skrzydla, 'Czy to zwierze posiada skrzydla?').
attr_question(nogi, 'Ile nog/odnozy ma to zwierze?').
attr_question(udomowione, 'Czy to zwierze jest udomowione?').
attr_question(rozrod, 'Jaka jest strategia rozrodcza zwierzecia?').
attr_question(futro, 'Czy to zwierze posiada futro?').
attr_question(klimat, 'W jakim klimacie najczesciej zyje to zwierze?').
attr_question(gromada, 'Do jakiej gromady nalezy to zwierze?').
attr_question(stadne, 'Czy to zwierze jest stadne?').
attr_question(kontynent, 'Z jakiego kontynentu pochodzi to zwierze?').

ask_question(Attr, Animals, NewAnimals) :-
    write('-----------------------------------------'), nl,
    ( Attr = wielkosc ->
        write('Zauwaz: Wielkosc jest atrybutem rozmytym, obliczanym z ciezaru, dlugosci i dl. zycia.'), nl,
        ask_fuzzy_inputs(WielkoscVal),
        assertz(known(wielkosc, =, WielkoscVal)),
        filter_animals(Animals, Attr, WielkoscVal, NewAnimals)
    ;
        ( attr_question(Attr, Q) -> format('Pytanie: ~w~n', [Q])
        ; format('Jakie jest ~w zwierzecia?~n', [Attr]) ),
        findall(Val, (member(A, Animals), rough:get_attr(A, Attr, Val)), Vals),
        list_to_set(Vals, UniqueVals),
        format('Mozliwe opcje: ~w~n', [UniqueVals]),
        write('Twoja odpowiedz (lub kilka oddzielonych przecinkiem, np. tak,nie): '),
        read_line_to_string(user_input, InputStr),
        split_string(InputStr, ",", " \t\n\r", InputList),
        maplist(atom_string, InputAtoms, InputList),
        ( length(InputAtoms, 1) ->
            InputAtoms = [Answer],
            assertz(known(Attr, =, Answer)),
            filter_animals(Animals, Attr, Answer, NewAnimals)
        ;
            assertz(known(Attr, in, InputAtoms)),
            filter_animals_multi(Animals, Attr, InputAtoms, NewAnimals)
        )
    ).

filter_animals(Animals, Attr, ExpectedVal, Filtered) :-
    findall(A, (member(A, Animals), rough:get_attr(A, Attr, ExpectedVal)), Filtered).

filter_animals_multi(Animals, Attr, ExpectedVals, Filtered) :-
    findall(A, (member(A, Animals), rough:get_attr(A, Attr, Val), member(Val, ExpectedVals)), Filtered).

ask_fuzzy_inputs(WielkoscVal) :-
    write('Podaj orientacyjny ciezar zwierzecia (kg): '),
    read_line_to_string(user_input, CiezarStr), number_string(Ciezar, CiezarStr),
    write('Podaj orientacyjna dlugosc zwierzecia (cm): '),
    read_line_to_string(user_input, DlugoscStr), number_string(Dlugosc, DlugoscStr),
    write('Podaj orientacyjna dlugosc zycia zwierzecia (lata): '),
    read_line_to_string(user_input, ZycieStr), number_string(Zycie, ZycieStr),
    calculate_wielkosc(Ciezar, Dlugosc, Zycie, WielkoscVal),
    format('Na podstawie logiki rozmytej system okreslil wielkosc jako: ~w~n', [WielkoscVal]).

count_occurrences(_, [], 0).
count_occurrences(X, [X|T], N) :- count_occurrences(X, T, N1), N is N1 + 1, !.
count_occurrences(X, [_|T], N) :- count_occurrences(X, T, N).
