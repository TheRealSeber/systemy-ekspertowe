% ===========================================================================
% rough_sets.pl  –  Moduł wnioskowania przybliżonego i reguł minimalnych
%
% Implementuje teorię zbiorów przybliżonych (Pawlak):
%   • tablicę decyzyjną zbudowaną z bazy wiedzy
%   • relację nierozróżnialności IND(B)
%   • przybliżenie dolne / górne
%   • atrybuty niezbędne (CORE)
%   • redukty
%   • generowanie reguł minimalnych (algorytm Pawlaka-Skowrona)
% ===========================================================================
:- encoding(utf8).
:- module(rough_sets, [
    build_decision_table/1,    % -Table (list of object-decision pairs)
    indiscernibility/4,       % +Attrs, +Obj1, +Obj2, -Bool
    lower_approx/3,            % +Attrs, +DecisionVal, -Lower
    upper_approx/3,            % +Attrs, +DecisionVal, -Upper
    core_attributes/1,         % -CoreAttrs
    reduct/1,                  % -Reduct (one minimal reduct via backtracking)
    all_reducts/1,             % -AllReducts
    generate_minimal_rules/1,  % -Rules (list of rule terms)
    print_analysis/0           % Pretty-print full analysis
]).

:- use_module(knowledge_base).

% ---------------------------------------------------------------------------
% Atrybuty warunkowe (bez wielkosc – jest wejściem z modułu rozmytego,
%   ale włączamy go do tablicy decyzyjnej dla kompletności)
% ---------------------------------------------------------------------------
% conditional_attributes/1 is defined in knowledge_base module
% ---------------------------------------------------------------------------
% Budowanie tablicy decyzyjnej z bazy wiedzy
%
% Każdy obiekt: obj(Id, Species, AttrValueList)
% ---------------------------------------------------------------------------

%% build_decision_table(-Table)
build_decision_table(Table) :-
    findall(Species-Attrs, animal_rule(Species, Attrs), Pairs),
    numlist_pairs(Pairs, 1, Table).

numlist_pairs([], _, []).
numlist_pairs([Species-Attrs|Rest], N, [obj(N, Species, Attrs)|Table]) :-
    N1 is N + 1,
    numlist_pairs(Rest, N1, Table).

% Skrót: wszystkie obiekty jako lista
all_objects(Objects) :-
    build_decision_table(Objects).

% ---------------------------------------------------------------------------
% Pobieranie wartości atrybutu z obiektu (obsługa list dla multi-atrybutów)
% ---------------------------------------------------------------------------

get_attr_value(Attr, Attrs, Value) :-
    member(Attr=Value, Attrs).

% ---------------------------------------------------------------------------
% Relacja nierozróżnialności
%
%% indiscernible(+Attrs, +ObjAttrs1, +ObjAttrs2)
%  Prawda gdy oba obiekty mają identyczne wartości dla wszystkich Attrs.
% ---------------------------------------------------------------------------

indiscernible([], _, _).
indiscernible([A|Rest], Attrs1, Attrs2) :-
    get_attr_value(A, Attrs1, V1),
    get_attr_value(A, Attrs2, V2),
    V1 == V2,
    indiscernible(Rest, Attrs1, Rest2), !
    ; Rest = [], !.

indiscernible([A|Rest], Attrs1, Attrs2) :-
    ( get_attr_value(A, Attrs1, V1),
      get_attr_value(A, Attrs2, V2)
    -> V1 == V2
    ;  true   % atrybut nieobecny – ignorujemy
    ),
    indiscernible(Rest, Attrs1, Attrs2).

%% indiscernibility(+Attrs, +Obj1, +Obj2, -Bool)
indiscernibility(Attrs, obj(_, _, A1), obj(_, _, A2), true) :-
    indiscernible_all(Attrs, A1, A2), !.
indiscernibility(_, _, _, false).

indiscernible_all([], _, _).
indiscernible_all([A|Rest], A1, A2) :-
    ( get_attr_value(A, A1, V1),
      get_attr_value(A, A2, V2)
    -> V1 == V2
    ;  true
    ),
    indiscernible_all(Rest, A1, A2).

%% equivalence_class(+Attrs, +Obj, +AllObjects, -Class)
equivalence_class(Attrs, Obj, AllObjects, Class) :-
    include(indiscernible_with(Attrs, Obj), AllObjects, Class).

indiscernible_with(Attrs, Obj, Other) :-
    indiscernibility(Attrs, Obj, Other, true).

% ---------------------------------------------------------------------------
% Przybliżenie dolne i górne
% ---------------------------------------------------------------------------

%% lower_approx(+Attrs, +Species, -LowerIds)
lower_approx(Attrs, Species, Lower) :-
    all_objects(All),
    include([obj(_, S, _)]>>(S = Species), All, TargetSet),
    include(lower_check(Attrs, TargetSet), TargetSet, Lower).

lower_check(Attrs, TargetSet, Obj) :-
    equivalence_class(Attrs, Obj, TargetSet, Class),
    % sprawdź czy cała klasa równoważności zawiera się w zbiorze docelowym
    maplist([O]>>(member(O, TargetSet)), Class).

%% upper_approx(+Attrs, +Species, -UpperIds)
upper_approx(Attrs, Species, Upper) :-
    all_objects(All),
    include([obj(_, S, _)]>>(S = Species), All, TargetSet),
    include(upper_check(Attrs, TargetSet, All), All, Upper).

upper_check(Attrs, TargetSet, All, Obj) :-
    equivalence_class(Attrs, Obj, All, Class),
    intersection_(Class, TargetSet, Intersection),
    Intersection \= [].

intersection_([], _, []).
intersection_([H|T], B, [H|R]) :- member(H, B), !, intersection_(T, B, R).
intersection_([_|T], B, R)     :- intersection_(T, B, R).

% ---------------------------------------------------------------------------
% Macierz nierozróżnialności
%
% M(i,j) = zbiór atrybutów różniących Obj_i i Obj_j
% ---------------------------------------------------------------------------

%% discernibility_matrix(-Matrix)
%  Matrix = list of (i,j,DiffAttrs) for i < j
discernibility_matrix(Matrix) :-
    all_objects(All),
    findall(pair(I, J, Diff),
        ( nth1(I, All, Obj1),
          nth1(J, All, Obj2),
          J > I,
          Obj1 = obj(_, S1, A1),
          Obj2 = obj(_, S2, A2),
          S1 \= S2,                     % różne decyzje → interesuje nas para
          knowledge_base:conditional_attributes(CAs),
          differentiating_attrs(CAs, A1, A2, Diff),
          Diff \= []
        ),
        Matrix).

differentiating_attrs([], _, _, []).
differentiating_attrs([A|Rest], A1, A2, [A|Diff]) :-
    get_attr_value(A, A1, V1),
    get_attr_value(A, A2, V2),
    V1 \== V2, !,
    differentiating_attrs(Rest, A1, A2, Diff).
differentiating_attrs([_|Rest], A1, A2, Diff) :-
    differentiating_attrs(Rest, A1, A2, Diff).

% ---------------------------------------------------------------------------
% Atrybuty niezbędne (CORE)
%
% Atrybut a jest niezbędny jeśli istnieje para (i,j) w macierzy
% gdzie Mij = {a} (jednoelementowa różnica)
% ---------------------------------------------------------------------------

%% core_attributes(-Core)
core_attributes(Core) :-
    discernibility_matrix(Matrix),
    include([pair(_, _, Diff)]>>(Diff = [_]), Matrix, Singletons),
    maplist([pair(_, _, [A])]>>(true), Singletons, _),
    findall(A,
        ( member(pair(_, _, [A]), Singletons) ),
        CoreList),
    sort(CoreList, Core).

% ---------------------------------------------------------------------------
% Redukty (via funkcja nierozróżnialności / pokrycie)
%
% Redukt to minimalny podzbiór atrybutów pokrywający każdy element macierzy.
% Używamy uproszczonego algorytmu greedy + weryfikacja.
% ---------------------------------------------------------------------------

%% reduct(-Reduct) – zwraca jeden redukt (przez nawracanie można uzyskać więcej)
reduct(Reduct) :-
    discernibility_matrix(Matrix),
    knowledge_base:conditional_attributes(All),
    % Zacznij od CORE
    core_attributes(Core),
    % Spróbuj dodać atrybuty aż do pokrycia
    covers_all(Core, Matrix), !,
    Reduct = Core.
reduct(Reduct) :-
    discernibility_matrix(Matrix),
    knowledge_base:conditional_attributes(All),
    core_attributes(Core),
    subtract(All, Core, Remaining),
    find_reduct(Core, Remaining, Matrix, Reduct).

find_reduct(Current, _, Matrix, Current) :-
    covers_all(Current, Matrix), !.
find_reduct(Current, [A|Rest], Matrix, Reduct) :-
    find_reduct([A|Current], Rest, Matrix, Reduct).
find_reduct(Current, [_|Rest], Matrix, Reduct) :-
    find_reduct(Current, Rest, Matrix, Reduct).

%% covers_all(+Attrs, +Matrix)
covers_all(_, []).
covers_all(Attrs, [pair(_, _, Diff)|Rest]) :-
    intersection_(Attrs, Diff, Cover),
    Cover \= [],
    covers_all(Attrs, Rest).

%% all_reducts(-Reducts)
all_reducts(Reducts) :-
    findall(R, reduct(R), Rs),
    sort(Rs, Reducts).

% ---------------------------------------------------------------------------
% Generowanie reguł minimalnych (algorytm Pawlaka-Skowrona)
% ---------------------------------------------------------------------------

%% generate_minimal_rules(-Rules)
%  Reguły postaci: rule(Species, CondList)
%  gdzie CondList = [attr=value, ...]
generate_minimal_rules(Rules) :-
    all_objects(Objects),
    findall(S, member(obj(_, S, _), Objects), Ss),
    sort(Ss, Species),
    maplist(rules_for_species(Objects), Species, RuleLists),
    flatten(RuleLists, Rules).

%% rules_for_species(+AllObjects, +Species, -Rules)
rules_for_species(AllObjects, Species, Rules) :-
    include([obj(_, S, _)]>>(S = Species), AllObjects, SpeciesObjs),
    include([obj(_, S, _)]>>(S \= Species), AllObjects, OtherObjs),
    maplist(minimal_rule_for_obj(OtherObjs), SpeciesObjs, Rules).

%% minimal_rule_for_obj(+Others, +Obj, -Rule)
minimal_rule_for_obj(Others, obj(_, Species, Attrs), rule(Species, MinConds)) :-
    knowledge_base:conditional_attributes(AllAttrs),
    % Wszystkie warunki obiektu
    findall(A=V,
        ( member(A, AllAttrs),
          get_attr_value(A, Attrs, V)
        ),
        AllConds),
    % Znajdź minimalny podzbiór warunków odróżniający od wszystkich innych
    minimize_conditions(AllConds, Others, MinConds).

minimize_conditions(Conds, Others, MinConds) :-
    find_minimal_subset(Conds, Others, [], MinConds), !.
minimize_conditions(Conds, _, Conds).  % fallback

find_minimal_subset(Conds, Others, Acc, Min) :-
    covers_others(Acc, Others), !,
    Min = Acc.
find_minimal_subset([C|Rest], Others, Acc, Min) :-
    ( covers_others([C|Acc], Others)
    -> find_minimal_subset(Rest, Others, [C|Acc], Min)
    ;  find_minimal_subset(Rest, Others, Acc, Min)
    ).
find_minimal_subset([], _, Acc, Acc).

covers_others(Conds, Others) :-
    forall(member(obj(_, _, OtherAttrs), Others),
           ( select_cond_mismatch(Conds, OtherAttrs) )).

select_cond_mismatch(Conds, OtherAttrs) :-
    member(A=V, Conds),
    get_attr_value(A, OtherAttrs, V2),
    V \== V2.

% ---------------------------------------------------------------------------
% Drukowanie analizy (tylko ten moduł, nie UI)
% ---------------------------------------------------------------------------

%% print_analysis/0  –  wywołaj z głównego interfejsu lub samodzielnie
print_analysis :-
    nl,
    writeln('================================================================'),
    writeln('  ANALIZA BAZY WIEDZY – TEORIA ZBIORÓW PRZYBLIŻONYCH'),
    writeln('================================================================'),
    nl,

    writeln('--- Atrybuty niezbędne (CORE) ---'),
    ( core_attributes(Core)
    -> forall(member(A, Core), (write('  • '), writeln(A)))
    ;  writeln('  (brak – wszystkie atrybuty są zbędne)')
    ), nl,

    writeln('--- Redukty ---'),
    ( all_reducts(Reducts)
    -> ( Reducts = []
       -> writeln('  Brak reduktów (baza niespójna lub pusta)')
       ;  forall(member(R, Reducts),
              ( write('  Redukt: '), writeln(R) ))
       )
    ;  writeln('  Błąd podczas wyznaczania reduktów')
    ), nl,

    writeln('--- Reguły minimalne ---'),
    ( generate_minimal_rules(Rules)
    -> ( Rules = []
       -> writeln('  Brak reguł')
       ;  forall(member(rule(Species, Conds), Rules),
              print_rule(Species, Conds) )
       )
    ;  writeln('  Błąd podczas generowania reguł')
    ), nl,
    writeln('================================================================').

print_rule(Species, Conds) :-
    write('  JEŚLI '),
    print_conds(Conds),
    write('  TO gatunek = '),
    writeln(Species).

print_conds([]).
print_conds([A=V]) :-
    write(A), write(' = '), write(V), write(' ').
print_conds([A=V|Rest]) :-
    Rest \= [],
    write(A), write(' = '), write(V), write(' ORAZ '),
    print_conds(Rest).
