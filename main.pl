:- use_module('src/ui').
:- use_module('src/rough').

main :-
    write('Wybierz opcje:'), nl,
    write('1. Uruchom system ekspertowy (identyfikacja zwierzecia)'), nl,
    write('2. Analiza bazy wiedzy (reguly minimalne i atrybuty niezbedne)'), nl,
    write('Twoj wybor (1/2): '),
    read_line_to_string(user_input, ChoiceStr),
    ( ChoiceStr = "1" ->
        ui:start_expert_system
    ; ChoiceStr = "2" ->
        analyze_kb
    ;
        write('Nieprawidlowy wybor.'), nl, halt
    ).

analyze_kb :-
    write('-----------------------------------------'), nl,
    write('Analiza Bazy Wiedzy (Minimal Rules Module)'), nl,
    write('-----------------------------------------'), nl,
    rough:print_indispensable,
    rough:find_minimal_rules.

:- initialization(main, main).
