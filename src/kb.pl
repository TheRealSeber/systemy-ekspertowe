:- module(kb, [
    animal/1,
    attribute/3,
    continuous_attribute/3
]).

:- discontiguous animal/1.
:- discontiguous attribute/3.
:- discontiguous continuous_attribute/3.

% Baza wiedzy (100 gatunków)

animal('lew').
attribute('lew', dieta, 'miesozerne').
attribute('lew', srodowisko, 'ladowe').
attribute('lew', skrzydla, 'nie').
attribute('lew', nogi, 'cztery').
attribute('lew', udomowione, 'nie').
attribute('lew', rozrod, 'zyworodne').
attribute('lew', futro, 'tak').
attribute('lew', klimat, 'cieply').
attribute('lew', gromada, 'ssaki').
attribute('lew', stadne, 'tak').
attribute('lew', kontynent, 'afryka').
continuous_attribute('lew', ciezar, 190.0).
continuous_attribute('lew', dlugosc, 250.0).
continuous_attribute('lew', dlugosc_zycia, 12.0).

animal('tygrys').
attribute('tygrys', dieta, 'miesozerne').
attribute('tygrys', srodowisko, 'ladowe').
attribute('tygrys', skrzydla, 'nie').
attribute('tygrys', nogi, 'cztery').
attribute('tygrys', udomowione, 'nie').
attribute('tygrys', rozrod, 'zyworodne').
attribute('tygrys', futro, 'tak').
attribute('tygrys', klimat, 'cieply').
attribute('tygrys', gromada, 'ssaki').
attribute('tygrys', stadne, 'nie').
attribute('tygrys', kontynent, 'azja').
continuous_attribute('tygrys', ciezar, 220.0).
continuous_attribute('tygrys', dlugosc, 280.0).
continuous_attribute('tygrys', dlugosc_zycia, 15.0).

animal('niedzwiedz').
attribute('niedzwiedz', dieta, 'wszystkozerne').
attribute('niedzwiedz', srodowisko, 'ladowe').
attribute('niedzwiedz', skrzydla, 'nie').
attribute('niedzwiedz', nogi, 'cztery').
attribute('niedzwiedz', udomowione, 'nie').
attribute('niedzwiedz', rozrod, 'zyworodne').
attribute('niedzwiedz', futro, 'tak').
attribute('niedzwiedz', klimat, 'umiarkowany').
attribute('niedzwiedz', gromada, 'ssaki').
attribute('niedzwiedz', stadne, 'nie').
attribute('niedzwiedz', kontynent, 'europa').
continuous_attribute('niedzwiedz', ciezar, 300.0).
continuous_attribute('niedzwiedz', dlugosc, 200.0).
continuous_attribute('niedzwiedz', dlugosc_zycia, 25.0).

animal('wilk').
attribute('wilk', dieta, 'miesozerne').
attribute('wilk', srodowisko, 'ladowe').
attribute('wilk', skrzydla, 'nie').
attribute('wilk', nogi, 'cztery').
attribute('wilk', udomowione, 'nie').
attribute('wilk', rozrod, 'zyworodne').
attribute('wilk', futro, 'tak').
attribute('wilk', klimat, 'umiarkowany').
attribute('wilk', gromada, 'ssaki').
attribute('wilk', stadne, 'tak').
attribute('wilk', kontynent, 'europa').
continuous_attribute('wilk', ciezar, 40.0).
continuous_attribute('wilk', dlugosc, 130.0).
continuous_attribute('wilk', dlugosc_zycia, 14.0).

animal('lis').
attribute('lis', dieta, 'miesozerne').
attribute('lis', srodowisko, 'ladowe').
attribute('lis', skrzydla, 'nie').
attribute('lis', nogi, 'cztery').
attribute('lis', udomowione, 'nie').
attribute('lis', rozrod, 'zyworodne').
attribute('lis', futro, 'tak').
attribute('lis', klimat, 'umiarkowany').
attribute('lis', gromada, 'ssaki').
attribute('lis', stadne, 'nie').
attribute('lis', kontynent, 'europa').
continuous_attribute('lis', ciezar, 7.0).
continuous_attribute('lis', dlugosc, 70.0).
continuous_attribute('lis', dlugosc_zycia, 5.0).

animal('slon').
attribute('slon', dieta, 'roslinozerne').
attribute('slon', srodowisko, 'ladowe').
attribute('slon', skrzydla, 'nie').
attribute('slon', nogi, 'cztery').
attribute('slon', udomowione, 'nie').
attribute('slon', rozrod, 'zyworodne').
attribute('slon', futro, 'nie').
attribute('slon', klimat, 'cieply').
attribute('slon', gromada, 'ssaki').
attribute('slon', stadne, 'tak').
attribute('slon', kontynent, 'afryka').
continuous_attribute('slon', ciezar, 5000.0).
continuous_attribute('slon', dlugosc, 600.0).
continuous_attribute('slon', dlugosc_zycia, 60.0).

animal('zyrafa').
attribute('zyrafa', dieta, 'roslinozerne').
attribute('zyrafa', srodowisko, 'ladowe').
attribute('zyrafa', skrzydla, 'nie').
attribute('zyrafa', nogi, 'cztery').
attribute('zyrafa', udomowione, 'nie').
attribute('zyrafa', rozrod, 'zyworodne').
attribute('zyrafa', futro, 'tak').
attribute('zyrafa', klimat, 'cieply').
attribute('zyrafa', gromada, 'ssaki').
attribute('zyrafa', stadne, 'tak').
attribute('zyrafa', kontynent, 'afryka').
continuous_attribute('zyrafa', ciezar, 1000.0).
continuous_attribute('zyrafa', dlugosc, 450.0).
continuous_attribute('zyrafa', dlugosc_zycia, 25.0).

animal('zebra').
attribute('zebra', dieta, 'roslinozerne').
attribute('zebra', srodowisko, 'ladowe').
attribute('zebra', skrzydla, 'nie').
attribute('zebra', nogi, 'cztery').
attribute('zebra', udomowione, 'nie').
attribute('zebra', rozrod, 'zyworodne').
attribute('zebra', futro, 'tak').
attribute('zebra', klimat, 'cieply').
attribute('zebra', gromada, 'ssaki').
attribute('zebra', stadne, 'tak').
attribute('zebra', kontynent, 'afryka').
continuous_attribute('zebra', ciezar, 300.0).
continuous_attribute('zebra', dlugosc, 230.0).
continuous_attribute('zebra', dlugosc_zycia, 20.0).

animal('hipopotam').
attribute('hipopotam', dieta, 'roslinozerne').
attribute('hipopotam', srodowisko, 'ladowe').
attribute('hipopotam', skrzydla, 'nie').
attribute('hipopotam', nogi, 'cztery').
attribute('hipopotam', udomowione, 'nie').
attribute('hipopotam', rozrod, 'zyworodne').
attribute('hipopotam', futro, 'nie').
attribute('hipopotam', klimat, 'cieply').
attribute('hipopotam', gromada, 'ssaki').
attribute('hipopotam', stadne, 'tak').
attribute('hipopotam', kontynent, 'afryka').
continuous_attribute('hipopotam', ciezar, 1500.0).
continuous_attribute('hipopotam', dlugosc, 350.0).
continuous_attribute('hipopotam', dlugosc_zycia, 40.0).

animal('nosorozec').
attribute('nosorozec', dieta, 'roslinozerne').
attribute('nosorozec', srodowisko, 'ladowe').
attribute('nosorozec', skrzydla, 'nie').
attribute('nosorozec', nogi, 'cztery').
attribute('nosorozec', udomowione, 'nie').
attribute('nosorozec', rozrod, 'zyworodne').
attribute('nosorozec', futro, 'nie').
attribute('nosorozec', klimat, 'cieply').
attribute('nosorozec', gromada, 'ssaki').
attribute('nosorozec', stadne, 'nie').
attribute('nosorozec', kontynent, 'afryka').
continuous_attribute('nosorozec', ciezar, 2000.0).
continuous_attribute('nosorozec', dlugosc, 350.0).
continuous_attribute('nosorozec', dlugosc_zycia, 45.0).

animal('krokodyl').
attribute('krokodyl', dieta, 'miesozerne').
attribute('krokodyl', srodowisko, 'wodne').
attribute('krokodyl', skrzydla, 'nie').
attribute('krokodyl', nogi, 'cztery').
attribute('krokodyl', udomowione, 'nie').
attribute('krokodyl', rozrod, 'jajorodne').
attribute('krokodyl', futro, 'nie').
attribute('krokodyl', klimat, 'cieply').
attribute('krokodyl', gromada, 'gady').
attribute('krokodyl', stadne, 'nie').
attribute('krokodyl', kontynent, 'afryka').
continuous_attribute('krokodyl', ciezar, 400.0).
continuous_attribute('krokodyl', dlugosc, 400.0).
continuous_attribute('krokodyl', dlugosc_zycia, 70.0).

animal('aligator').
attribute('aligator', dieta, 'miesozerne').
attribute('aligator', srodowisko, 'wodne').
attribute('aligator', skrzydla, 'nie').
attribute('aligator', nogi, 'cztery').
attribute('aligator', udomowione, 'nie').
attribute('aligator', rozrod, 'jajorodne').
attribute('aligator', futro, 'nie').
attribute('aligator', klimat, 'cieply').
attribute('aligator', gromada, 'gady').
attribute('aligator', stadne, 'nie').
attribute('aligator', kontynent, 'ameryka_polnocna').
continuous_attribute('aligator', ciezar, 250.0).
continuous_attribute('aligator', dlugosc, 350.0).
continuous_attribute('aligator', dlugosc_zycia, 50.0).

animal('waz_boa').
attribute('waz_boa', dieta, 'miesozerne').
attribute('waz_boa', srodowisko, 'ladowe').
attribute('waz_boa', skrzydla, 'nie').
attribute('waz_boa', nogi, 'brak').
attribute('waz_boa', udomowione, 'nie').
attribute('waz_boa', rozrod, 'zyworodne').
attribute('waz_boa', futro, 'nie').
attribute('waz_boa', klimat, 'cieply').
attribute('waz_boa', gromada, 'gady').
attribute('waz_boa', stadne, 'nie').
attribute('waz_boa', kontynent, 'ameryka_poludniowa').
continuous_attribute('waz_boa', ciezar, 30.0).
continuous_attribute('waz_boa', dlugosc, 400.0).
continuous_attribute('waz_boa', dlugosc_zycia, 20.0).

animal('kobra').
attribute('kobra', dieta, 'miesozerne').
attribute('kobra', srodowisko, 'ladowe').
attribute('kobra', skrzydla, 'nie').
attribute('kobra', nogi, 'brak').
attribute('kobra', udomowione, 'nie').
attribute('kobra', rozrod, 'jajorodne').
attribute('kobra', futro, 'nie').
attribute('kobra', klimat, 'cieply').
attribute('kobra', gromada, 'gady').
attribute('kobra', stadne, 'nie').
attribute('kobra', kontynent, 'azja').
continuous_attribute('kobra', ciezar, 6.0).
continuous_attribute('kobra', dlugosc, 400.0).
continuous_attribute('kobra', dlugosc_zycia, 20.0).

animal('zmija').
attribute('zmija', dieta, 'miesozerne').
attribute('zmija', srodowisko, 'ladowe').
attribute('zmija', skrzydla, 'nie').
attribute('zmija', nogi, 'brak').
attribute('zmija', udomowione, 'nie').
attribute('zmija', rozrod, 'jajozyworodne').
attribute('zmija', futro, 'nie').
attribute('zmija', klimat, 'umiarkowany').
attribute('zmija', gromada, 'gady').
attribute('zmija', stadne, 'nie').
attribute('zmija', kontynent, 'europa').
continuous_attribute('zmija', ciezar, 0.2).
continuous_attribute('zmija', dlugosc, 65.0).
continuous_attribute('zmija', dlugosc_zycia, 12.0).

animal('zolw_ladowy').
attribute('zolw_ladowy', dieta, 'roslinozerne').
attribute('zolw_ladowy', srodowisko, 'ladowe').
attribute('zolw_ladowy', skrzydla, 'nie').
attribute('zolw_ladowy', nogi, 'cztery').
attribute('zolw_ladowy', udomowione, 'nie').
attribute('zolw_ladowy', rozrod, 'jajorodne').
attribute('zolw_ladowy', futro, 'nie').
attribute('zolw_ladowy', klimat, 'cieply').
attribute('zolw_ladowy', gromada, 'gady').
attribute('zolw_ladowy', stadne, 'nie').
attribute('zolw_ladowy', kontynent, 'afryka').
continuous_attribute('zolw_ladowy', ciezar, 50.0).
continuous_attribute('zolw_ladowy', dlugosc, 60.0).
continuous_attribute('zolw_ladowy', dlugosc_zycia, 100.0).

animal('zolw_morski').
attribute('zolw_morski', dieta, 'wszystkozerne').
attribute('zolw_morski', srodowisko, 'wodne').
attribute('zolw_morski', skrzydla, 'nie').
attribute('zolw_morski', nogi, 'cztery').
attribute('zolw_morski', udomowione, 'nie').
attribute('zolw_morski', rozrod, 'jajorodne').
attribute('zolw_morski', futro, 'nie').
attribute('zolw_morski', klimat, 'cieply').
attribute('zolw_morski', gromada, 'gady').
attribute('zolw_morski', stadne, 'nie').
attribute('zolw_morski', kontynent, 'ameryka_polnocna').
continuous_attribute('zolw_morski', ciezar, 150.0).
continuous_attribute('zolw_morski', dlugosc, 120.0).
continuous_attribute('zolw_morski', dlugosc_zycia, 80.0).

animal('jaszczurka').
attribute('jaszczurka', dieta, 'miesozerne').
attribute('jaszczurka', srodowisko, 'ladowe').
attribute('jaszczurka', skrzydla, 'nie').
attribute('jaszczurka', nogi, 'cztery').
attribute('jaszczurka', udomowione, 'nie').
attribute('jaszczurka', rozrod, 'jajorodne').
attribute('jaszczurka', futro, 'nie').
attribute('jaszczurka', klimat, 'umiarkowany').
attribute('jaszczurka', gromada, 'gady').
attribute('jaszczurka', stadne, 'nie').
attribute('jaszczurka', kontynent, 'europa').
continuous_attribute('jaszczurka', ciezar, 0.05).
continuous_attribute('jaszczurka', dlugosc, 20.0).
continuous_attribute('jaszczurka', dlugosc_zycia, 6.0).

animal('kameleon').
attribute('kameleon', dieta, 'miesozerne').
attribute('kameleon', srodowisko, 'ladowe').
attribute('kameleon', skrzydla, 'nie').
attribute('kameleon', nogi, 'cztery').
attribute('kameleon', udomowione, 'nie').
attribute('kameleon', rozrod, 'jajorodne').
attribute('kameleon', futro, 'nie').
attribute('kameleon', klimat, 'cieply').
attribute('kameleon', gromada, 'gady').
attribute('kameleon', stadne, 'nie').
attribute('kameleon', kontynent, 'afryka').
continuous_attribute('kameleon', ciezar, 0.2).
continuous_attribute('kameleon', dlugosc, 30.0).
continuous_attribute('kameleon', dlugosc_zycia, 5.0).

animal('legwan').
attribute('legwan', dieta, 'roslinozerne').
attribute('legwan', srodowisko, 'ladowe').
attribute('legwan', skrzydla, 'nie').
attribute('legwan', nogi, 'cztery').
attribute('legwan', udomowione, 'nie').
attribute('legwan', rozrod, 'jajorodne').
attribute('legwan', futro, 'nie').
attribute('legwan', klimat, 'cieply').
attribute('legwan', gromada, 'gady').
attribute('legwan', stadne, 'nie').
attribute('legwan', kontynent, 'ameryka_poludniowa').
continuous_attribute('legwan', ciezar, 4.0).
continuous_attribute('legwan', dlugosc, 150.0).
continuous_attribute('legwan', dlugosc_zycia, 15.0).

animal('orzel').
attribute('orzel', dieta, 'miesozerne').
attribute('orzel', srodowisko, 'powietrzne').
attribute('orzel', skrzydla, 'tak').
attribute('orzel', nogi, 'dwa').
attribute('orzel', udomowione, 'nie').
attribute('orzel', rozrod, 'jajorodne').
attribute('orzel', futro, 'nie').
attribute('orzel', klimat, 'umiarkowany').
attribute('orzel', gromada, 'ptaki').
attribute('orzel', stadne, 'nie').
attribute('orzel', kontynent, 'europa').
continuous_attribute('orzel', ciezar, 4.5).
continuous_attribute('orzel', dlugosc, 85.0).
continuous_attribute('orzel', dlugosc_zycia, 25.0).

animal('sokol').
attribute('sokol', dieta, 'miesozerne').
attribute('sokol', srodowisko, 'powietrzne').
attribute('sokol', skrzydla, 'tak').
attribute('sokol', nogi, 'dwa').
attribute('sokol', udomowione, 'nie').
attribute('sokol', rozrod, 'jajorodne').
attribute('sokol', futro, 'nie').
attribute('sokol', klimat, 'umiarkowany').
attribute('sokol', gromada, 'ptaki').
attribute('sokol', stadne, 'nie').
attribute('sokol', kontynent, 'europa').
continuous_attribute('sokol', ciezar, 1.0).
continuous_attribute('sokol', dlugosc, 45.0).
continuous_attribute('sokol', dlugosc_zycia, 15.0).

animal('jastrzab').
attribute('jastrzab', dieta, 'miesozerne').
attribute('jastrzab', srodowisko, 'powietrzne').
attribute('jastrzab', skrzydla, 'tak').
attribute('jastrzab', nogi, 'dwa').
attribute('jastrzab', udomowione, 'nie').
attribute('jastrzab', rozrod, 'jajorodne').
attribute('jastrzab', futro, 'nie').
attribute('jastrzab', klimat, 'umiarkowany').
attribute('jastrzab', gromada, 'ptaki').
attribute('jastrzab', stadne, 'nie').
attribute('jastrzab', kontynent, 'europa').
continuous_attribute('jastrzab', ciezar, 1.2).
continuous_attribute('jastrzab', dlugosc, 55.0).
continuous_attribute('jastrzab', dlugosc_zycia, 15.0).

animal('sowa').
attribute('sowa', dieta, 'miesozerne').
attribute('sowa', srodowisko, 'powietrzne').
attribute('sowa', skrzydla, 'tak').
attribute('sowa', nogi, 'dwa').
attribute('sowa', udomowione, 'nie').
attribute('sowa', rozrod, 'jajorodne').
attribute('sowa', futro, 'nie').
attribute('sowa', klimat, 'umiarkowany').
attribute('sowa', gromada, 'ptaki').
attribute('sowa', stadne, 'nie').
attribute('sowa', kontynent, 'europa').
continuous_attribute('sowa', ciezar, 2.0).
continuous_attribute('sowa', dlugosc, 65.0).
continuous_attribute('sowa', dlugosc_zycia, 15.0).

animal('wrobel').
attribute('wrobel', dieta, 'wszystkozerne').
attribute('wrobel', srodowisko, 'powietrzne').
attribute('wrobel', skrzydla, 'tak').
attribute('wrobel', nogi, 'dwa').
attribute('wrobel', udomowione, 'nie').
attribute('wrobel', rozrod, 'jajorodne').
attribute('wrobel', futro, 'nie').
attribute('wrobel', klimat, 'umiarkowany').
attribute('wrobel', gromada, 'ptaki').
attribute('wrobel', stadne, 'tak').
attribute('wrobel', kontynent, 'europa').
continuous_attribute('wrobel', ciezar, 0.03).
continuous_attribute('wrobel', dlugosc, 15.0).
continuous_attribute('wrobel', dlugosc_zycia, 3.0).

animal('goleb').
attribute('goleb', dieta, 'roslinozerne').
attribute('goleb', srodowisko, 'powietrzne').
attribute('goleb', skrzydla, 'tak').
attribute('goleb', nogi, 'dwa').
attribute('goleb', udomowione, 'tak').
attribute('goleb', rozrod, 'jajorodne').
attribute('goleb', futro, 'nie').
attribute('goleb', klimat, 'umiarkowany').
attribute('goleb', gromada, 'ptaki').
attribute('goleb', stadne, 'tak').
attribute('goleb', kontynent, 'europa').
continuous_attribute('goleb', ciezar, 0.35).
continuous_attribute('goleb', dlugosc, 32.0).
continuous_attribute('goleb', dlugosc_zycia, 6.0).

animal('kruk').
attribute('kruk', dieta, 'wszystkozerne').
attribute('kruk', srodowisko, 'powietrzne').
attribute('kruk', skrzydla, 'tak').
attribute('kruk', nogi, 'dwa').
attribute('kruk', udomowione, 'nie').
attribute('kruk', rozrod, 'jajorodne').
attribute('kruk', futro, 'nie').
attribute('kruk', klimat, 'umiarkowany').
attribute('kruk', gromada, 'ptaki').
attribute('kruk', stadne, 'nie').
attribute('kruk', kontynent, 'europa').
continuous_attribute('kruk', ciezar, 1.2).
continuous_attribute('kruk', dlugosc, 60.0).
continuous_attribute('kruk', dlugosc_zycia, 15.0).

animal('papuga').
attribute('papuga', dieta, 'roslinozerne').
attribute('papuga', srodowisko, 'powietrzne').
attribute('papuga', skrzydla, 'tak').
attribute('papuga', nogi, 'dwa').
attribute('papuga', udomowione, 'nie').
attribute('papuga', rozrod, 'jajorodne').
attribute('papuga', futro, 'nie').
attribute('papuga', klimat, 'cieply').
attribute('papuga', gromada, 'ptaki').
attribute('papuga', stadne, 'tak').
attribute('papuga', kontynent, 'ameryka_poludniowa').
continuous_attribute('papuga', ciezar, 1.0).
continuous_attribute('papuga', dlugosc, 90.0).
continuous_attribute('papuga', dlugosc_zycia, 50.0).

animal('pingwin').
attribute('pingwin', dieta, 'miesozerne').
attribute('pingwin', srodowisko, 'wodne').
attribute('pingwin', skrzydla, 'tak').
attribute('pingwin', nogi, 'dwa').
attribute('pingwin', udomowione, 'nie').
attribute('pingwin', rozrod, 'jajorodne').
attribute('pingwin', futro, 'nie').
attribute('pingwin', klimat, 'chlodny').
attribute('pingwin', gromada, 'ptaki').
attribute('pingwin', stadne, 'tak').
attribute('pingwin', kontynent, 'antarktyda').
continuous_attribute('pingwin', ciezar, 30.0).
continuous_attribute('pingwin', dlugosc, 110.0).
continuous_attribute('pingwin', dlugosc_zycia, 20.0).

animal('struc').
attribute('struc', dieta, 'roslinozerne').
attribute('struc', srodowisko, 'ladowe').
attribute('struc', skrzydla, 'tak').
attribute('struc', nogi, 'dwa').
attribute('struc', udomowione, 'nie').
attribute('struc', rozrod, 'jajorodne').
attribute('struc', futro, 'nie').
attribute('struc', klimat, 'cieply').
attribute('struc', gromada, 'ptaki').
attribute('struc', stadne, 'tak').
attribute('struc', kontynent, 'afryka').
continuous_attribute('struc', ciezar, 120.0).
continuous_attribute('struc', dlugosc, 240.0).
continuous_attribute('struc', dlugosc_zycia, 40.0).

animal('rekin').
attribute('rekin', dieta, 'miesozerne').
attribute('rekin', srodowisko, 'wodne').
attribute('rekin', skrzydla, 'nie').
attribute('rekin', nogi, 'brak').
attribute('rekin', udomowione, 'nie').
attribute('rekin', rozrod, 'jajozyworodne').
attribute('rekin', futro, 'nie').
attribute('rekin', klimat, 'cieply').
attribute('rekin', gromada, 'ryby').
attribute('rekin', stadne, 'nie').
attribute('rekin', kontynent, 'australia').
continuous_attribute('rekin', ciezar, 1000.0).
continuous_attribute('rekin', dlugosc, 450.0).
continuous_attribute('rekin', dlugosc_zycia, 30.0).

animal('delfin').
attribute('delfin', dieta, 'miesozerne').
attribute('delfin', srodowisko, 'wodne').
attribute('delfin', skrzydla, 'nie').
attribute('delfin', nogi, 'brak').
attribute('delfin', udomowione, 'nie').
attribute('delfin', rozrod, 'zyworodne').
attribute('delfin', futro, 'nie').
attribute('delfin', klimat, 'cieply').
attribute('delfin', gromada, 'ssaki').
attribute('delfin', stadne, 'tak').
attribute('delfin', kontynent, 'europa').
continuous_attribute('delfin', ciezar, 200.0).
continuous_attribute('delfin', dlugosc, 250.0).
continuous_attribute('delfin', dlugosc_zycia, 25.0).

animal('wieloryb').
attribute('wieloryb', dieta, 'miesozerne').
attribute('wieloryb', srodowisko, 'wodne').
attribute('wieloryb', skrzydla, 'nie').
attribute('wieloryb', nogi, 'brak').
attribute('wieloryb', udomowione, 'nie').
attribute('wieloryb', rozrod, 'zyworodne').
attribute('wieloryb', futro, 'nie').
attribute('wieloryb', klimat, 'chlodny').
attribute('wieloryb', gromada, 'ssaki').
attribute('wieloryb', stadne, 'tak').
attribute('wieloryb', kontynent, 'antarktyda').
continuous_attribute('wieloryb', ciezar, 100000.0).
continuous_attribute('wieloryb', dlugosc, 2500.0).
continuous_attribute('wieloryb', dlugosc_zycia, 80.0).

animal('orka').
attribute('orka', dieta, 'miesozerne').
attribute('orka', srodowisko, 'wodne').
attribute('orka', skrzydla, 'nie').
attribute('orka', nogi, 'brak').
attribute('orka', udomowione, 'nie').
attribute('orka', rozrod, 'zyworodne').
attribute('orka', futro, 'nie').
attribute('orka', klimat, 'chlodny').
attribute('orka', gromada, 'ssaki').
attribute('orka', stadne, 'tak').
attribute('orka', kontynent, 'antarktyda').
continuous_attribute('orka', ciezar, 5000.0).
continuous_attribute('orka', dlugosc, 700.0).
continuous_attribute('orka', dlugosc_zycia, 50.0).

animal('losos').
attribute('losos', dieta, 'miesozerne').
attribute('losos', srodowisko, 'wodne').
attribute('losos', skrzydla, 'nie').
attribute('losos', nogi, 'brak').
attribute('losos', udomowione, 'nie').
attribute('losos', rozrod, 'jajorodne').
attribute('losos', futro, 'nie').
attribute('losos', klimat, 'chlodny').
attribute('losos', gromada, 'ryby').
attribute('losos', stadne, 'tak').
attribute('losos', kontynent, 'ameryka_polnocna').
continuous_attribute('losos', ciezar, 5.0).
continuous_attribute('losos', dlugosc, 100.0).
continuous_attribute('losos', dlugosc_zycia, 6.0).

animal('karp').
attribute('karp', dieta, 'wszystkozerne').
attribute('karp', srodowisko, 'wodne').
attribute('karp', skrzydla, 'nie').
attribute('karp', nogi, 'brak').
attribute('karp', udomowione, 'tak').
attribute('karp', rozrod, 'jajorodne').
attribute('karp', futro, 'nie').
attribute('karp', klimat, 'umiarkowany').
attribute('karp', gromada, 'ryby').
attribute('karp', stadne, 'tak').
attribute('karp', kontynent, 'europa').
continuous_attribute('karp', ciezar, 4.0).
continuous_attribute('karp', dlugosc, 60.0).
continuous_attribute('karp', dlugosc_zycia, 20.0).

animal('szczupak').
attribute('szczupak', dieta, 'miesozerne').
attribute('szczupak', srodowisko, 'wodne').
attribute('szczupak', skrzydla, 'nie').
attribute('szczupak', nogi, 'brak').
attribute('szczupak', udomowione, 'nie').
attribute('szczupak', rozrod, 'jajorodne').
attribute('szczupak', futro, 'nie').
attribute('szczupak', klimat, 'umiarkowany').
attribute('szczupak', gromada, 'ryby').
attribute('szczupak', stadne, 'nie').
attribute('szczupak', kontynent, 'europa').
continuous_attribute('szczupak', ciezar, 8.0).
continuous_attribute('szczupak', dlugosc, 100.0).
continuous_attribute('szczupak', dlugosc_zycia, 12.0).

animal('mors').
attribute('mors', dieta, 'miesozerne').
attribute('mors', srodowisko, 'wodne').
attribute('mors', skrzydla, 'nie').
attribute('mors', nogi, 'cztery').
attribute('mors', udomowione, 'nie').
attribute('mors', rozrod, 'zyworodne').
attribute('mors', futro, 'nie').
attribute('mors', klimat, 'chlodny').
attribute('mors', gromada, 'ssaki').
attribute('mors', stadne, 'tak').
attribute('mors', kontynent, 'ameryka_polnocna').
continuous_attribute('mors', ciezar, 1000.0).
continuous_attribute('mors', dlugosc, 300.0).
continuous_attribute('mors', dlugosc_zycia, 30.0).

animal('foka').
attribute('foka', dieta, 'miesozerne').
attribute('foka', srodowisko, 'wodne').
attribute('foka', skrzydla, 'nie').
attribute('foka', nogi, 'cztery').
attribute('foka', udomowione, 'nie').
attribute('foka', rozrod, 'zyworodne').
attribute('foka', futro, 'tak').
attribute('foka', klimat, 'chlodny').
attribute('foka', gromada, 'ssaki').
attribute('foka', stadne, 'tak').
attribute('foka', kontynent, 'europa').
continuous_attribute('foka', ciezar, 100.0).
continuous_attribute('foka', dlugosc, 160.0).
continuous_attribute('foka', dlugosc_zycia, 25.0).

animal('wydra').
attribute('wydra', dieta, 'miesozerne').
attribute('wydra', srodowisko, 'wodne').
attribute('wydra', skrzydla, 'nie').
attribute('wydra', nogi, 'cztery').
attribute('wydra', udomowione, 'nie').
attribute('wydra', rozrod, 'zyworodne').
attribute('wydra', futro, 'tak').
attribute('wydra', klimat, 'umiarkowany').
attribute('wydra', gromada, 'ssaki').
attribute('wydra', stadne, 'nie').
attribute('wydra', kontynent, 'europa').
continuous_attribute('wydra', ciezar, 10.0).
continuous_attribute('wydra', dlugosc, 110.0).
continuous_attribute('wydra', dlugosc_zycia, 12.0).

animal('zaba').
attribute('zaba', dieta, 'miesozerne').
attribute('zaba', srodowisko, 'ladowe').
attribute('zaba', skrzydla, 'nie').
attribute('zaba', nogi, 'cztery').
attribute('zaba', udomowione, 'nie').
attribute('zaba', rozrod, 'jajorodne').
attribute('zaba', futro, 'nie').
attribute('zaba', klimat, 'umiarkowany').
attribute('zaba', gromada, 'plazy').
attribute('zaba', stadne, 'nie').
attribute('zaba', kontynent, 'europa').
continuous_attribute('zaba', ciezar, 0.05).
continuous_attribute('zaba', dlugosc, 10.0).
continuous_attribute('zaba', dlugosc_zycia, 5.0).

animal('ropucha').
attribute('ropucha', dieta, 'miesozerne').
attribute('ropucha', srodowisko, 'ladowe').
attribute('ropucha', skrzydla, 'nie').
attribute('ropucha', nogi, 'cztery').
attribute('ropucha', udomowione, 'nie').
attribute('ropucha', rozrod, 'jajorodne').
attribute('ropucha', futro, 'nie').
attribute('ropucha', klimat, 'umiarkowany').
attribute('ropucha', gromada, 'plazy').
attribute('ropucha', stadne, 'nie').
attribute('ropucha', kontynent, 'europa').
continuous_attribute('ropucha', ciezar, 0.1).
continuous_attribute('ropucha', dlugosc, 12.0).
continuous_attribute('ropucha', dlugosc_zycia, 10.0).

animal('salamandra').
attribute('salamandra', dieta, 'miesozerne').
attribute('salamandra', srodowisko, 'ladowe').
attribute('salamandra', skrzydla, 'nie').
attribute('salamandra', nogi, 'cztery').
attribute('salamandra', udomowione, 'nie').
attribute('salamandra', rozrod, 'jajorodne').
attribute('salamandra', futro, 'nie').
attribute('salamandra', klimat, 'umiarkowany').
attribute('salamandra', gromada, 'plazy').
attribute('salamandra', stadne, 'nie').
attribute('salamandra', kontynent, 'europa').
continuous_attribute('salamandra', ciezar, 0.04).
continuous_attribute('salamandra', dlugosc, 20.0).
continuous_attribute('salamandra', dlugosc_zycia, 15.0).

animal('traszka').
attribute('traszka', dieta, 'miesozerne').
attribute('traszka', srodowisko, 'wodne').
attribute('traszka', skrzydla, 'nie').
attribute('traszka', nogi, 'cztery').
attribute('traszka', udomowione, 'nie').
attribute('traszka', rozrod, 'jajorodne').
attribute('traszka', futro, 'nie').
attribute('traszka', klimat, 'umiarkowany').
attribute('traszka', gromada, 'plazy').
attribute('traszka', stadne, 'nie').
attribute('traszka', kontynent, 'europa').
continuous_attribute('traszka', ciezar, 0.02).
continuous_attribute('traszka', dlugosc, 10.0).
continuous_attribute('traszka', dlugosc_zycia, 8.0).

animal('kumak').
attribute('kumak', dieta, 'miesozerne').
attribute('kumak', srodowisko, 'ladowe').
attribute('kumak', skrzydla, 'nie').
attribute('kumak', nogi, 'cztery').
attribute('kumak', udomowione, 'nie').
attribute('kumak', rozrod, 'jajorodne').
attribute('kumak', futro, 'nie').
attribute('kumak', klimat, 'umiarkowany').
attribute('kumak', gromada, 'plazy').
attribute('kumak', stadne, 'nie').
attribute('kumak', kontynent, 'europa').
continuous_attribute('kumak', ciezar, 0.01).
continuous_attribute('kumak', dlugosc, 5.0).
continuous_attribute('kumak', dlugosc_zycia, 5.0).

animal('krowa').
attribute('krowa', dieta, 'roslinozerne').
attribute('krowa', srodowisko, 'ladowe').
attribute('krowa', skrzydla, 'nie').
attribute('krowa', nogi, 'cztery').
attribute('krowa', udomowione, 'tak').
attribute('krowa', rozrod, 'zyworodne').
attribute('krowa', futro, 'tak').
attribute('krowa', klimat, 'umiarkowany').
attribute('krowa', gromada, 'ssaki').
attribute('krowa', stadne, 'tak').
attribute('krowa', kontynent, 'europa').
continuous_attribute('krowa', ciezar, 600.0).
continuous_attribute('krowa', dlugosc, 200.0).
continuous_attribute('krowa', dlugosc_zycia, 20.0).

animal('kon').
attribute('kon', dieta, 'roslinozerne').
attribute('kon', srodowisko, 'ladowe').
attribute('kon', skrzydla, 'nie').
attribute('kon', nogi, 'cztery').
attribute('kon', udomowione, 'tak').
attribute('kon', rozrod, 'zyworodne').
attribute('kon', futro, 'tak').
attribute('kon', klimat, 'umiarkowany').
attribute('kon', gromada, 'ssaki').
attribute('kon', stadne, 'tak').
attribute('kon', kontynent, 'europa').
continuous_attribute('kon', ciezar, 500.0).
continuous_attribute('kon', dlugosc, 240.0).
continuous_attribute('kon', dlugosc_zycia, 25.0).

animal('swinia').
attribute('swinia', dieta, 'wszystkozerne').
attribute('swinia', srodowisko, 'ladowe').
attribute('swinia', skrzydla, 'nie').
attribute('swinia', nogi, 'cztery').
attribute('swinia', udomowione, 'tak').
attribute('swinia', rozrod, 'zyworodne').
attribute('swinia', futro, 'nie').
attribute('swinia', klimat, 'umiarkowany').
attribute('swinia', gromada, 'ssaki').
attribute('swinia', stadne, 'tak').
attribute('swinia', kontynent, 'europa').
continuous_attribute('swinia', ciezar, 200.0).
continuous_attribute('swinia', dlugosc, 150.0).
continuous_attribute('swinia', dlugosc_zycia, 12.0).

animal('owca').
attribute('owca', dieta, 'roslinozerne').
attribute('owca', srodowisko, 'ladowe').
attribute('owca', skrzydla, 'nie').
attribute('owca', nogi, 'cztery').
attribute('owca', udomowione, 'tak').
attribute('owca', rozrod, 'zyworodne').
attribute('owca', futro, 'tak').
attribute('owca', klimat, 'umiarkowany').
attribute('owca', gromada, 'ssaki').
attribute('owca', stadne, 'tak').
attribute('owca', kontynent, 'europa').
continuous_attribute('owca', ciezar, 70.0).
continuous_attribute('owca', dlugosc, 120.0).
continuous_attribute('owca', dlugosc_zycia, 12.0).

animal('koza').
attribute('koza', dieta, 'roslinozerne').
attribute('koza', srodowisko, 'ladowe').
attribute('koza', skrzydla, 'nie').
attribute('koza', nogi, 'cztery').
attribute('koza', udomowione, 'tak').
attribute('koza', rozrod, 'zyworodne').
attribute('koza', futro, 'tak').
attribute('koza', klimat, 'umiarkowany').
attribute('koza', gromada, 'ssaki').
attribute('koza', stadne, 'tak').
attribute('koza', kontynent, 'europa').
continuous_attribute('koza', ciezar, 60.0).
continuous_attribute('koza', dlugosc, 110.0).
continuous_attribute('koza', dlugosc_zycia, 15.0).

animal('pies').
attribute('pies', dieta, 'miesozerne').
attribute('pies', srodowisko, 'ladowe').
attribute('pies', skrzydla, 'nie').
attribute('pies', nogi, 'cztery').
attribute('pies', udomowione, 'tak').
attribute('pies', rozrod, 'zyworodne').
attribute('pies', futro, 'tak').
attribute('pies', klimat, 'umiarkowany').
attribute('pies', gromada, 'ssaki').
attribute('pies', stadne, 'tak').
attribute('pies', kontynent, 'europa').
continuous_attribute('pies', ciezar, 25.0).
continuous_attribute('pies', dlugosc, 80.0).
continuous_attribute('pies', dlugosc_zycia, 13.0).

animal('kot').
attribute('kot', dieta, 'miesozerne').
attribute('kot', srodowisko, 'ladowe').
attribute('kot', skrzydla, 'nie').
attribute('kot', nogi, 'cztery').
attribute('kot', udomowione, 'tak').
attribute('kot', rozrod, 'zyworodne').
attribute('kot', futro, 'tak').
attribute('kot', klimat, 'umiarkowany').
attribute('kot', gromada, 'ssaki').
attribute('kot', stadne, 'nie').
attribute('kot', kontynent, 'europa').
continuous_attribute('kot', ciezar, 4.0).
continuous_attribute('kot', dlugosc, 50.0).
continuous_attribute('kot', dlugosc_zycia, 15.0).

animal('krolik').
attribute('krolik', dieta, 'roslinozerne').
attribute('krolik', srodowisko, 'ladowe').
attribute('krolik', skrzydla, 'nie').
attribute('krolik', nogi, 'cztery').
attribute('krolik', udomowione, 'tak').
attribute('krolik', rozrod, 'zyworodne').
attribute('krolik', futro, 'tak').
attribute('krolik', klimat, 'umiarkowany').
attribute('krolik', gromada, 'ssaki').
attribute('krolik', stadne, 'tak').
attribute('krolik', kontynent, 'europa').
continuous_attribute('krolik', ciezar, 2.5).
continuous_attribute('krolik', dlugosc, 40.0).
continuous_attribute('krolik', dlugosc_zycia, 8.0).

animal('chomik').
attribute('chomik', dieta, 'roslinozerne').
attribute('chomik', srodowisko, 'ladowe').
attribute('chomik', skrzydla, 'nie').
attribute('chomik', nogi, 'cztery').
attribute('chomik', udomowione, 'tak').
attribute('chomik', rozrod, 'zyworodne').
attribute('chomik', futro, 'tak').
attribute('chomik', klimat, 'umiarkowany').
attribute('chomik', gromada, 'ssaki').
attribute('chomik', stadne, 'nie').
attribute('chomik', kontynent, 'europa').
continuous_attribute('chomik', ciezar, 0.13).
continuous_attribute('chomik', dlugosc, 15.0).
continuous_attribute('chomik', dlugosc_zycia, 2.5).

animal('swinka_morska').
attribute('swinka_morska', dieta, 'roslinozerne').
attribute('swinka_morska', srodowisko, 'ladowe').
attribute('swinka_morska', skrzydla, 'nie').
attribute('swinka_morska', nogi, 'cztery').
attribute('swinka_morska', udomowione, 'tak').
attribute('swinka_morska', rozrod, 'zyworodne').
attribute('swinka_morska', futro, 'tak').
attribute('swinka_morska', klimat, 'umiarkowany').
attribute('swinka_morska', gromada, 'ssaki').
attribute('swinka_morska', stadne, 'tak').
attribute('swinka_morska', kontynent, 'ameryka_poludniowa').
continuous_attribute('swinka_morska', ciezar, 1.0).
continuous_attribute('swinka_morska', dlugosc, 25.0).
continuous_attribute('swinka_morska', dlugosc_zycia, 6.0).

animal('mysz').
attribute('mysz', dieta, 'wszystkozerne').
attribute('mysz', srodowisko, 'ladowe').
attribute('mysz', skrzydla, 'nie').
attribute('mysz', nogi, 'cztery').
attribute('mysz', udomowione, 'nie').
attribute('mysz', rozrod, 'zyworodne').
attribute('mysz', futro, 'tak').
attribute('mysz', klimat, 'umiarkowany').
attribute('mysz', gromada, 'ssaki').
attribute('mysz', stadne, 'nie').
attribute('mysz', kontynent, 'europa').
continuous_attribute('mysz', ciezar, 0.02).
continuous_attribute('mysz', dlugosc, 8.0).
continuous_attribute('mysz', dlugosc_zycia, 2.0).

animal('szczur').
attribute('szczur', dieta, 'wszystkozerne').
attribute('szczur', srodowisko, 'ladowe').
attribute('szczur', skrzydla, 'nie').
attribute('szczur', nogi, 'cztery').
attribute('szczur', udomowione, 'nie').
attribute('szczur', rozrod, 'zyworodne').
attribute('szczur', futro, 'tak').
attribute('szczur', klimat, 'umiarkowany').
attribute('szczur', gromada, 'ssaki').
attribute('szczur', stadne, 'tak').
attribute('szczur', kontynent, 'azja').
continuous_attribute('szczur', ciezar, 0.3).
continuous_attribute('szczur', dlugosc, 25.0).
continuous_attribute('szczur', dlugosc_zycia, 3.0).

animal('wiewiorka').
attribute('wiewiorka', dieta, 'wszystkozerne').
attribute('wiewiorka', srodowisko, 'ladowe').
attribute('wiewiorka', skrzydla, 'nie').
attribute('wiewiorka', nogi, 'cztery').
attribute('wiewiorka', udomowione, 'nie').
attribute('wiewiorka', rozrod, 'zyworodne').
attribute('wiewiorka', futro, 'tak').
attribute('wiewiorka', klimat, 'umiarkowany').
attribute('wiewiorka', gromada, 'ssaki').
attribute('wiewiorka', stadne, 'nie').
attribute('wiewiorka', kontynent, 'europa').
continuous_attribute('wiewiorka', ciezar, 0.3).
continuous_attribute('wiewiorka', dlugosc, 25.0).
continuous_attribute('wiewiorka', dlugosc_zycia, 6.0).

animal('bobr').
attribute('bobr', dieta, 'roslinozerne').
attribute('bobr', srodowisko, 'wodne').
attribute('bobr', skrzydla, 'nie').
attribute('bobr', nogi, 'cztery').
attribute('bobr', udomowione, 'nie').
attribute('bobr', rozrod, 'zyworodne').
attribute('bobr', futro, 'tak').
attribute('bobr', klimat, 'umiarkowany').
attribute('bobr', gromada, 'ssaki').
attribute('bobr', stadne, 'tak').
attribute('bobr', kontynent, 'europa').
continuous_attribute('bobr', ciezar, 20.0).
continuous_attribute('bobr', dlugosc, 100.0).
continuous_attribute('bobr', dlugosc_zycia, 15.0).

animal('jeoz').
attribute('jeoz', dieta, 'miesozerne').
attribute('jeoz', srodowisko, 'ladowe').
attribute('jeoz', skrzydla, 'nie').
attribute('jeoz', nogi, 'cztery').
attribute('jeoz', udomowione, 'nie').
attribute('jeoz', rozrod, 'zyworodne').
attribute('jeoz', futro, 'nie').
attribute('jeoz', klimat, 'umiarkowany').
attribute('jeoz', gromada, 'ssaki').
attribute('jeoz', stadne, 'nie').
attribute('jeoz', kontynent, 'europa').
continuous_attribute('jeoz', ciezar, 1.0).
continuous_attribute('jeoz', dlugosc, 25.0).
continuous_attribute('jeoz', dlugosc_zycia, 5.0).

animal('kangur').
attribute('kangur', dieta, 'roslinozerne').
attribute('kangur', srodowisko, 'ladowe').
attribute('kangur', skrzydla, 'nie').
attribute('kangur', nogi, 'dwa').
attribute('kangur', udomowione, 'nie').
attribute('kangur', rozrod, 'zyworodne').
attribute('kangur', futro, 'tak').
attribute('kangur', klimat, 'cieply').
attribute('kangur', gromada, 'ssaki').
attribute('kangur', stadne, 'tak').
attribute('kangur', kontynent, 'australia').
continuous_attribute('kangur', ciezar, 50.0).
continuous_attribute('kangur', dlugosc, 150.0).
continuous_attribute('kangur', dlugosc_zycia, 15.0).

animal('koala').
attribute('koala', dieta, 'roslinozerne').
attribute('koala', srodowisko, 'ladowe').
attribute('koala', skrzydla, 'nie').
attribute('koala', nogi, 'cztery').
attribute('koala', udomowione, 'nie').
attribute('koala', rozrod, 'zyworodne').
attribute('koala', futro, 'tak').
attribute('koala', klimat, 'cieply').
attribute('koala', gromada, 'ssaki').
attribute('koala', stadne, 'nie').
attribute('koala', kontynent, 'australia').
continuous_attribute('koala', ciezar, 8.0).
continuous_attribute('koala', dlugosc, 75.0).
continuous_attribute('koala', dlugosc_zycia, 15.0).

animal('dziobak').
attribute('dziobak', dieta, 'miesozerne').
attribute('dziobak', srodowisko, 'wodne').
attribute('dziobak', skrzydla, 'nie').
attribute('dziobak', nogi, 'cztery').
attribute('dziobak', udomowione, 'nie').
attribute('dziobak', rozrod, 'jajorodne').
attribute('dziobak', futro, 'tak').
attribute('dziobak', klimat, 'umiarkowany').
attribute('dziobak', gromada, 'ssaki').
attribute('dziobak', stadne, 'nie').
attribute('dziobak', kontynent, 'australia').
continuous_attribute('dziobak', ciezar, 1.5).
continuous_attribute('dziobak', dlugosc, 45.0).
continuous_attribute('dziobak', dlugosc_zycia, 12.0).

animal('kolczatka').
attribute('kolczatka', dieta, 'miesozerne').
attribute('kolczatka', srodowisko, 'ladowe').
attribute('kolczatka', skrzydla, 'nie').
attribute('kolczatka', nogi, 'cztery').
attribute('kolczatka', udomowione, 'nie').
attribute('kolczatka', rozrod, 'jajorodne').
attribute('kolczatka', futro, 'nie').
attribute('kolczatka', klimat, 'cieply').
attribute('kolczatka', gromada, 'ssaki').
attribute('kolczatka', stadne, 'nie').
attribute('kolczatka', kontynent, 'australia').
continuous_attribute('kolczatka', ciezar, 4.0).
continuous_attribute('kolczatka', dlugosc, 40.0).
continuous_attribute('kolczatka', dlugosc_zycia, 45.0).

animal('wombat').
attribute('wombat', dieta, 'roslinozerne').
attribute('wombat', srodowisko, 'ladowe').
attribute('wombat', skrzydla, 'nie').
attribute('wombat', nogi, 'cztery').
attribute('wombat', udomowione, 'nie').
attribute('wombat', rozrod, 'zyworodne').
attribute('wombat', futro, 'tak').
attribute('wombat', klimat, 'umiarkowany').
attribute('wombat', gromada, 'ssaki').
attribute('wombat', stadne, 'nie').
attribute('wombat', kontynent, 'australia').
continuous_attribute('wombat', ciezar, 25.0).
continuous_attribute('wombat', dlugosc, 100.0).
continuous_attribute('wombat', dlugosc_zycia, 15.0).

animal('emu').
attribute('emu', dieta, 'roslinozerne').
attribute('emu', srodowisko, 'ladowe').
attribute('emu', skrzydla, 'tak').
attribute('emu', nogi, 'dwa').
attribute('emu', udomowione, 'nie').
attribute('emu', rozrod, 'jajorodne').
attribute('emu', futro, 'nie').
attribute('emu', klimat, 'cieply').
attribute('emu', gromada, 'ptaki').
attribute('emu', stadne, 'tak').
attribute('emu', kontynent, 'australia').
continuous_attribute('emu', ciezar, 40.0).
continuous_attribute('emu', dlugosc, 170.0).
continuous_attribute('emu', dlugosc_zycia, 15.0).

animal('kiwi').
attribute('kiwi', dieta, 'miesozerne').
attribute('kiwi', srodowisko, 'ladowe').
attribute('kiwi', skrzydla, 'tak').
attribute('kiwi', nogi, 'dwa').
attribute('kiwi', udomowione, 'nie').
attribute('kiwi', rozrod, 'jajorodne').
attribute('kiwi', futro, 'nie').
attribute('kiwi', klimat, 'umiarkowany').
attribute('kiwi', gromada, 'ptaki').
attribute('kiwi', stadne, 'nie').
attribute('kiwi', kontynent, 'australia').
continuous_attribute('kiwi', ciezar, 2.0).
continuous_attribute('kiwi', dlugosc, 40.0).
continuous_attribute('kiwi', dlugosc_zycia, 30.0).

animal('diabel_tasmanski').
attribute('diabel_tasmanski', dieta, 'miesozerne').
attribute('diabel_tasmanski', srodowisko, 'ladowe').
attribute('diabel_tasmanski', skrzydla, 'nie').
attribute('diabel_tasmanski', nogi, 'cztery').
attribute('diabel_tasmanski', udomowione, 'nie').
attribute('diabel_tasmanski', rozrod, 'zyworodne').
attribute('diabel_tasmanski', futro, 'tak').
attribute('diabel_tasmanski', klimat, 'umiarkowany').
attribute('diabel_tasmanski', gromada, 'ssaki').
attribute('diabel_tasmanski', stadne, 'nie').
attribute('diabel_tasmanski', kontynent, 'australia').
continuous_attribute('diabel_tasmanski', ciezar, 8.0).
continuous_attribute('diabel_tasmanski', dlugosc, 60.0).
continuous_attribute('diabel_tasmanski', dlugosc_zycia, 6.0).

animal('dingo').
attribute('dingo', dieta, 'miesozerne').
attribute('dingo', srodowisko, 'ladowe').
attribute('dingo', skrzydla, 'nie').
attribute('dingo', nogi, 'cztery').
attribute('dingo', udomowione, 'nie').
attribute('dingo', rozrod, 'zyworodne').
attribute('dingo', futro, 'tak').
attribute('dingo', klimat, 'cieply').
attribute('dingo', gromada, 'ssaki').
attribute('dingo', stadne, 'tak').
attribute('dingo', kontynent, 'australia').
continuous_attribute('dingo', ciezar, 15.0).
continuous_attribute('dingo', dlugosc, 90.0).
continuous_attribute('dingo', dlugosc_zycia, 10.0).

animal('kazuar').
attribute('kazuar', dieta, 'wszystkozerne').
attribute('kazuar', srodowisko, 'ladowe').
attribute('kazuar', skrzydla, 'tak').
attribute('kazuar', nogi, 'dwa').
attribute('kazuar', udomowione, 'nie').
attribute('kazuar', rozrod, 'jajorodne').
attribute('kazuar', futro, 'nie').
attribute('kazuar', klimat, 'cieply').
attribute('kazuar', gromada, 'ptaki').
attribute('kazuar', stadne, 'nie').
attribute('kazuar', kontynent, 'australia').
continuous_attribute('kazuar', ciezar, 45.0).
continuous_attribute('kazuar', dlugosc, 150.0).
continuous_attribute('kazuar', dlugosc_zycia, 40.0).

animal('bawol').
attribute('bawol', dieta, 'roslinozerne').
attribute('bawol', srodowisko, 'ladowe').
attribute('bawol', skrzydla, 'nie').
attribute('bawol', nogi, 'cztery').
attribute('bawol', udomowione, 'nie').
attribute('bawol', rozrod, 'zyworodne').
attribute('bawol', futro, 'tak').
attribute('bawol', klimat, 'cieply').
attribute('bawol', gromada, 'ssaki').
attribute('bawol', stadne, 'tak').
attribute('bawol', kontynent, 'afryka').
continuous_attribute('bawol', ciezar, 600.0).
continuous_attribute('bawol', dlugosc, 250.0).
continuous_attribute('bawol', dlugosc_zycia, 20.0).

animal('bizon').
attribute('bizon', dieta, 'roslinozerne').
attribute('bizon', srodowisko, 'ladowe').
attribute('bizon', skrzydla, 'nie').
attribute('bizon', nogi, 'cztery').
attribute('bizon', udomowione, 'nie').
attribute('bizon', rozrod, 'zyworodne').
attribute('bizon', futro, 'tak').
attribute('bizon', klimat, 'umiarkowany').
attribute('bizon', gromada, 'ssaki').
attribute('bizon', stadne, 'tak').
attribute('bizon', kontynent, 'ameryka_polnocna').
continuous_attribute('bizon', ciezar, 800.0).
continuous_attribute('bizon', dlugosc, 300.0).
continuous_attribute('bizon', dlugosc_zycia, 20.0).

animal('los').
attribute('los', dieta, 'roslinozerne').
attribute('los', srodowisko, 'ladowe').
attribute('los', skrzydla, 'nie').
attribute('los', nogi, 'cztery').
attribute('los', udomowione, 'nie').
attribute('los', rozrod, 'zyworodne').
attribute('los', futro, 'tak').
attribute('los', klimat, 'chlodny').
attribute('los', gromada, 'ssaki').
attribute('los', stadne, 'nie').
attribute('los', kontynent, 'europa').
continuous_attribute('los', ciezar, 400.0).
continuous_attribute('los', dlugosc, 270.0).
continuous_attribute('los', dlugosc_zycia, 15.0).

animal('jelen').
attribute('jelen', dieta, 'roslinozerne').
attribute('jelen', srodowisko, 'ladowe').
attribute('jelen', skrzydla, 'nie').
attribute('jelen', nogi, 'cztery').
attribute('jelen', udomowione, 'nie').
attribute('jelen', rozrod, 'zyworodne').
attribute('jelen', futro, 'tak').
attribute('jelen', klimat, 'umiarkowany').
attribute('jelen', gromada, 'ssaki').
attribute('jelen', stadne, 'tak').
attribute('jelen', kontynent, 'europa').
continuous_attribute('jelen', ciezar, 200.0).
continuous_attribute('jelen', dlugosc, 200.0).
continuous_attribute('jelen', dlugosc_zycia, 15.0).

animal('sarna').
attribute('sarna', dieta, 'roslinozerne').
attribute('sarna', srodowisko, 'ladowe').
attribute('sarna', skrzydla, 'nie').
attribute('sarna', nogi, 'cztery').
attribute('sarna', udomowione, 'nie').
attribute('sarna', rozrod, 'zyworodne').
attribute('sarna', futro, 'tak').
attribute('sarna', klimat, 'umiarkowany').
attribute('sarna', gromada, 'ssaki').
attribute('sarna', stadne, 'tak').
attribute('sarna', kontynent, 'europa').
continuous_attribute('sarna', ciezar, 25.0).
continuous_attribute('sarna', dlugosc, 110.0).
continuous_attribute('sarna', dlugosc_zycia, 10.0).

animal('dzik').
attribute('dzik', dieta, 'wszystkozerne').
attribute('dzik', srodowisko, 'ladowe').
attribute('dzik', skrzydla, 'nie').
attribute('dzik', nogi, 'cztery').
attribute('dzik', udomowione, 'nie').
attribute('dzik', rozrod, 'zyworodne').
attribute('dzik', futro, 'tak').
attribute('dzik', klimat, 'umiarkowany').
attribute('dzik', gromada, 'ssaki').
attribute('dzik', stadne, 'tak').
attribute('dzik', kontynent, 'europa').
continuous_attribute('dzik', ciezar, 100.0).
continuous_attribute('dzik', dlugosc, 150.0).
continuous_attribute('dzik', dlugosc_zycia, 15.0).

animal('hipopotam_karlowaty').
attribute('hipopotam_karlowaty', dieta, 'roslinozerne').
attribute('hipopotam_karlowaty', srodowisko, 'ladowe').
attribute('hipopotam_karlowaty', skrzydla, 'nie').
attribute('hipopotam_karlowaty', nogi, 'cztery').
attribute('hipopotam_karlowaty', udomowione, 'nie').
attribute('hipopotam_karlowaty', rozrod, 'zyworodne').
attribute('hipopotam_karlowaty', futro, 'nie').
attribute('hipopotam_karlowaty', klimat, 'cieply').
attribute('hipopotam_karlowaty', gromada, 'ssaki').
attribute('hipopotam_karlowaty', stadne, 'nie').
attribute('hipopotam_karlowaty', kontynent, 'afryka').
continuous_attribute('hipopotam_karlowaty', ciezar, 250.0).
continuous_attribute('hipopotam_karlowaty', dlugosc, 160.0).
continuous_attribute('hipopotam_karlowaty', dlugosc_zycia, 40.0).

animal('tapir').
attribute('tapir', dieta, 'roslinozerne').
attribute('tapir', srodowisko, 'ladowe').
attribute('tapir', skrzydla, 'nie').
attribute('tapir', nogi, 'cztery').
attribute('tapir', udomowione, 'nie').
attribute('tapir', rozrod, 'zyworodne').
attribute('tapir', futro, 'nie').
attribute('tapir', klimat, 'cieply').
attribute('tapir', gromada, 'ssaki').
attribute('tapir', stadne, 'nie').
attribute('tapir', kontynent, 'ameryka_poludniowa').
continuous_attribute('tapir', ciezar, 250.0).
continuous_attribute('tapir', dlugosc, 200.0).
continuous_attribute('tapir', dlugosc_zycia, 25.0).

animal('lama').
attribute('lama', dieta, 'roslinozerne').
attribute('lama', srodowisko, 'ladowe').
attribute('lama', skrzydla, 'nie').
attribute('lama', nogi, 'cztery').
attribute('lama', udomowione, 'tak').
attribute('lama', rozrod, 'zyworodne').
attribute('lama', futro, 'tak').
attribute('lama', klimat, 'umiarkowany').
attribute('lama', gromada, 'ssaki').
attribute('lama', stadne, 'tak').
attribute('lama', kontynent, 'ameryka_poludniowa').
continuous_attribute('lama', ciezar, 140.0).
continuous_attribute('lama', dlugosc, 160.0).
continuous_attribute('lama', dlugosc_zycia, 20.0).

animal('alpaka').
attribute('alpaka', dieta, 'roslinozerne').
attribute('alpaka', srodowisko, 'ladowe').
attribute('alpaka', skrzydla, 'nie').
attribute('alpaka', nogi, 'cztery').
attribute('alpaka', udomowione, 'tak').
attribute('alpaka', rozrod, 'zyworodne').
attribute('alpaka', futro, 'tak').
attribute('alpaka', klimat, 'umiarkowany').
attribute('alpaka', gromada, 'ssaki').
attribute('alpaka', stadne, 'tak').
attribute('alpaka', kontynent, 'ameryka_poludniowa').
continuous_attribute('alpaka', ciezar, 65.0).
continuous_attribute('alpaka', dlugosc, 130.0).
continuous_attribute('alpaka', dlugosc_zycia, 20.0).

animal('wielblad').
attribute('wielblad', dieta, 'roslinozerne').
attribute('wielblad', srodowisko, 'ladowe').
attribute('wielblad', skrzydla, 'nie').
attribute('wielblad', nogi, 'cztery').
attribute('wielblad', udomowione, 'tak').
attribute('wielblad', rozrod, 'zyworodne').
attribute('wielblad', futro, 'tak').
attribute('wielblad', klimat, 'cieply').
attribute('wielblad', gromada, 'ssaki').
attribute('wielblad', stadne, 'tak').
attribute('wielblad', kontynent, 'azja').
continuous_attribute('wielblad', ciezar, 500.0).
continuous_attribute('wielblad', dlugosc, 300.0).
continuous_attribute('wielblad', dlugosc_zycia, 40.0).

animal('gepard').
attribute('gepard', dieta, 'miesozerne').
attribute('gepard', srodowisko, 'ladowe').
attribute('gepard', skrzydla, 'nie').
attribute('gepard', nogi, 'cztery').
attribute('gepard', udomowione, 'nie').
attribute('gepard', rozrod, 'zyworodne').
attribute('gepard', futro, 'tak').
attribute('gepard', klimat, 'cieply').
attribute('gepard', gromada, 'ssaki').
attribute('gepard', stadne, 'nie').
attribute('gepard', kontynent, 'afryka').
continuous_attribute('gepard', ciezar, 50.0).
continuous_attribute('gepard', dlugosc, 130.0).
continuous_attribute('gepard', dlugosc_zycia, 12.0).

animal('pantera').
attribute('pantera', dieta, 'miesozerne').
attribute('pantera', srodowisko, 'ladowe').
attribute('pantera', skrzydla, 'nie').
attribute('pantera', nogi, 'cztery').
attribute('pantera', udomowione, 'nie').
attribute('pantera', rozrod, 'zyworodne').
attribute('pantera', futro, 'tak').
attribute('pantera', klimat, 'cieply').
attribute('pantera', gromada, 'ssaki').
attribute('pantera', stadne, 'nie').
attribute('pantera', kontynent, 'afryka').
continuous_attribute('pantera', ciezar, 60.0).
continuous_attribute('pantera', dlugosc, 140.0).
continuous_attribute('pantera', dlugosc_zycia, 15.0).

animal('rysc').
attribute('rysc', dieta, 'miesozerne').
attribute('rysc', srodowisko, 'ladowe').
attribute('rysc', skrzydla, 'nie').
attribute('rysc', nogi, 'cztery').
attribute('rysc', udomowione, 'nie').
attribute('rysc', rozrod, 'zyworodne').
attribute('rysc', futro, 'tak').
attribute('rysc', klimat, 'umiarkowany').
attribute('rysc', gromada, 'ssaki').
attribute('rysc', stadne, 'nie').
attribute('rysc', kontynent, 'europa').
continuous_attribute('rysc', ciezar, 20.0).
continuous_attribute('rysc', dlugosc, 100.0).
continuous_attribute('rysc', dlugosc_zycia, 15.0).

animal('zumba').
attribute('zumba', dieta, 'miesozerne').
attribute('zumba', srodowisko, 'ladowe').
attribute('zumba', skrzydla, 'nie').
attribute('zumba', nogi, 'cztery').
attribute('zumba', udomowione, 'nie').
attribute('zumba', rozrod, 'zyworodne').
attribute('zumba', futro, 'tak').
attribute('zumba', klimat, 'cieply').
attribute('zumba', gromada, 'ssaki').
attribute('zumba', stadne, 'nie').
attribute('zumba', kontynent, 'ameryka_polnocna').
continuous_attribute('zumba', ciezar, 60.0).
continuous_attribute('zumba', dlugosc, 120.0).
continuous_attribute('zumba', dlugosc_zycia, 12.0).

animal('mrwkojad').
attribute('mrwkojad', dieta, 'miesozerne').
attribute('mrwkojad', srodowisko, 'ladowe').
attribute('mrwkojad', skrzydla, 'nie').
attribute('mrwkojad', nogi, 'cztery').
attribute('mrwkojad', udomowione, 'nie').
attribute('mrwkojad', rozrod, 'zyworodne').
attribute('mrwkojad', futro, 'tak').
attribute('mrwkojad', klimat, 'cieply').
attribute('mrwkojad', gromada, 'ssaki').
attribute('mrwkojad', stadne, 'nie').
attribute('mrwkojad', kontynent, 'ameryka_poludniowa').
continuous_attribute('mrwkojad', ciezar, 35.0).
continuous_attribute('mrwkojad', dlugosc, 120.0).
continuous_attribute('mrwkojad', dlugosc_zycia, 15.0).

animal('leniwiec').
attribute('leniwiec', dieta, 'roslinozerne').
attribute('leniwiec', srodowisko, 'ladowe').
attribute('leniwiec', skrzydla, 'nie').
attribute('leniwiec', nogi, 'cztery').
attribute('leniwiec', udomowione, 'nie').
attribute('leniwiec', rozrod, 'zyworodne').
attribute('leniwiec', futro, 'tak').
attribute('leniwiec', klimat, 'cieply').
attribute('leniwiec', gromada, 'ssaki').
attribute('leniwiec', stadne, 'nie').
attribute('leniwiec', kontynent, 'ameryka_poludniowa').
continuous_attribute('leniwiec', ciezar, 5.0).
continuous_attribute('leniwiec', dlugosc, 60.0).
continuous_attribute('leniwiec', dlugosc_zycia, 20.0).

animal('pancernik').
attribute('pancernik', dieta, 'wszystkozerne').
attribute('pancernik', srodowisko, 'ladowe').
attribute('pancernik', skrzydla, 'nie').
attribute('pancernik', nogi, 'cztery').
attribute('pancernik', udomowione, 'nie').
attribute('pancernik', rozrod, 'zyworodne').
attribute('pancernik', futro, 'nie').
attribute('pancernik', klimat, 'cieply').
attribute('pancernik', gromada, 'ssaki').
attribute('pancernik', stadne, 'nie').
attribute('pancernik', kontynent, 'ameryka_poludniowa').
continuous_attribute('pancernik', ciezar, 5.0).
continuous_attribute('pancernik', dlugosc, 50.0).
continuous_attribute('pancernik', dlugosc_zycia, 12.0).

animal('kret').
attribute('kret', dieta, 'miesozerne').
attribute('kret', srodowisko, 'ladowe').
attribute('kret', skrzydla, 'nie').
attribute('kret', nogi, 'cztery').
attribute('kret', udomowione, 'nie').
attribute('kret', rozrod, 'zyworodne').
attribute('kret', futro, 'tak').
attribute('kret', klimat, 'umiarkowany').
attribute('kret', gromada, 'ssaki').
attribute('kret', stadne, 'nie').
attribute('kret', kontynent, 'europa').
continuous_attribute('kret', ciezar, 0.1).
continuous_attribute('kret', dlugosc, 15.0).
continuous_attribute('kret', dlugosc_zycia, 4.0).

animal('nietoperz').
attribute('nietoperz', dieta, 'miesozerne').
attribute('nietoperz', srodowisko, 'powietrzne').
attribute('nietoperz', skrzydla, 'tak').
attribute('nietoperz', nogi, 'dwa').
attribute('nietoperz', udomowione, 'nie').
attribute('nietoperz', rozrod, 'zyworodne').
attribute('nietoperz', futro, 'tak').
attribute('nietoperz', klimat, 'umiarkowany').
attribute('nietoperz', gromada, 'ssaki').
attribute('nietoperz', stadne, 'tak').
attribute('nietoperz', kontynent, 'europa').
continuous_attribute('nietoperz', ciezar, 0.03).
continuous_attribute('nietoperz', dlugosc, 8.0).
continuous_attribute('nietoperz', dlugosc_zycia, 15.0).

animal('pszczola').
attribute('pszczola', dieta, 'roslinozerne').
attribute('pszczola', srodowisko, 'powietrzne').
attribute('pszczola', skrzydla, 'tak').
attribute('pszczola', nogi, 'szesc').
attribute('pszczola', udomowione, 'tak').
attribute('pszczola', rozrod, 'jajorodne').
attribute('pszczola', futro, 'nie').
attribute('pszczola', klimat, 'umiarkowany').
attribute('pszczola', gromada, 'inne').
attribute('pszczola', stadne, 'tak').
attribute('pszczola', kontynent, 'europa').
continuous_attribute('pszczola', ciezar, 0.0001).
continuous_attribute('pszczola', dlugosc, 1.2).
continuous_attribute('pszczola', dlugosc_zycia, 0.1).

animal('mucha').
attribute('mucha', dieta, 'wszystkozerne').
attribute('mucha', srodowisko, 'powietrzne').
attribute('mucha', skrzydla, 'tak').
attribute('mucha', nogi, 'szesc').
attribute('mucha', udomowione, 'nie').
attribute('mucha', rozrod, 'jajorodne').
attribute('mucha', futro, 'nie').
attribute('mucha', klimat, 'umiarkowany').
attribute('mucha', gromada, 'inne').
attribute('mucha', stadne, 'nie').
attribute('mucha', kontynent, 'europa').
continuous_attribute('mucha', ciezar, 1e-05).
continuous_attribute('mucha', dlugosc, 0.7).
continuous_attribute('mucha', dlugosc_zycia, 0.08).

animal('komar').
attribute('komar', dieta, 'miesozerne').
attribute('komar', srodowisko, 'powietrzne').
attribute('komar', skrzydla, 'tak').
attribute('komar', nogi, 'szesc').
attribute('komar', udomowione, 'nie').
attribute('komar', rozrod, 'jajorodne').
attribute('komar', futro, 'nie').
attribute('komar', klimat, 'umiarkowany').
attribute('komar', gromada, 'inne').
attribute('komar', stadne, 'nie').
attribute('komar', kontynent, 'europa').
continuous_attribute('komar', ciezar, 2e-06).
continuous_attribute('komar', dlugosc, 0.5).
continuous_attribute('komar', dlugosc_zycia, 0.04).

animal('motyl').
attribute('motyl', dieta, 'roslinozerne').
attribute('motyl', srodowisko, 'powietrzne').
attribute('motyl', skrzydla, 'tak').
attribute('motyl', nogi, 'szesc').
attribute('motyl', udomowione, 'nie').
attribute('motyl', rozrod, 'jajorodne').
attribute('motyl', futro, 'nie').
attribute('motyl', klimat, 'umiarkowany').
attribute('motyl', gromada, 'inne').
attribute('motyl', stadne, 'nie').
attribute('motyl', kontynent, 'europa').
continuous_attribute('motyl', ciezar, 0.0005).
continuous_attribute('motyl', dlugosc, 3.0).
continuous_attribute('motyl', dlugosc_zycia, 0.08).

animal('cma').
attribute('cma', dieta, 'roslinozerne').
attribute('cma', srodowisko, 'powietrzne').
attribute('cma', skrzydla, 'tak').
attribute('cma', nogi, 'szesc').
attribute('cma', udomowione, 'nie').
attribute('cma', rozrod, 'jajorodne').
attribute('cma', futro, 'nie').
attribute('cma', klimat, 'umiarkowany').
attribute('cma', gromada, 'inne').
attribute('cma', stadne, 'nie').
attribute('cma', kontynent, 'europa').
continuous_attribute('cma', ciezar, 0.0003).
continuous_attribute('cma', dlugosc, 2.5).
continuous_attribute('cma', dlugosc_zycia, 0.05).

animal('zapasnik').
attribute('zapasnik', dieta, 'roslinozerne').
attribute('zapasnik', srodowisko, 'ladowe').
attribute('zapasnik', skrzydla, 'tak').
attribute('zapasnik', nogi, 'szesc').
attribute('zapasnik', udomowione, 'nie').
attribute('zapasnik', rozrod, 'jajorodne').
attribute('zapasnik', futro, 'nie').
attribute('zapasnik', klimat, 'umiarkowany').
attribute('zapasnik', gromada, 'inne').
attribute('zapasnik', stadne, 'nie').
attribute('zapasnik', kontynent, 'europa').
continuous_attribute('zapasnik', ciezar, 0.002).
continuous_attribute('zapasnik', dlugosc, 4.0).
continuous_attribute('zapasnik', dlugosc_zycia, 1.0).

animal('biedronka').
attribute('biedronka', dieta, 'miesozerne').
attribute('biedronka', srodowisko, 'powietrzne').
attribute('biedronka', skrzydla, 'tak').
attribute('biedronka', nogi, 'szesc').
attribute('biedronka', udomowione, 'nie').
attribute('biedronka', rozrod, 'jajorodne').
attribute('biedronka', futro, 'nie').
attribute('biedronka', klimat, 'umiarkowany').
attribute('biedronka', gromada, 'inne').
attribute('biedronka', stadne, 'nie').
attribute('biedronka', kontynent, 'europa').
continuous_attribute('biedronka', ciezar, 3e-05).
continuous_attribute('biedronka', dlugosc, 0.8).
continuous_attribute('biedronka', dlugosc_zycia, 1.0).

animal('stonka').
attribute('stonka', dieta, 'roslinozerne').
attribute('stonka', srodowisko, 'ladowe').
attribute('stonka', skrzydla, 'tak').
attribute('stonka', nogi, 'szesc').
attribute('stonka', udomowione, 'nie').
attribute('stonka', rozrod, 'jajorodne').
attribute('stonka', futro, 'nie').
attribute('stonka', klimat, 'umiarkowany').
attribute('stonka', gromada, 'inne').
attribute('stonka', stadne, 'nie').
attribute('stonka', kontynent, 'ameryka_polnocna').
continuous_attribute('stonka', ciezar, 0.0001).
continuous_attribute('stonka', dlugosc, 1.0).
continuous_attribute('stonka', dlugosc_zycia, 1.0).

animal('pajak').
attribute('pajak', dieta, 'miesozerne').
attribute('pajak', srodowisko, 'ladowe').
attribute('pajak', skrzydla, 'nie').
attribute('pajak', nogi, 'osiem').
attribute('pajak', udomowione, 'nie').
attribute('pajak', rozrod, 'jajorodne').
attribute('pajak', futro, 'nie').
attribute('pajak', klimat, 'umiarkowany').
attribute('pajak', gromada, 'inne').
attribute('pajak', stadne, 'nie').
attribute('pajak', kontynent, 'europa').
continuous_attribute('pajak', ciezar, 0.001).
continuous_attribute('pajak', dlugosc, 2.0).
continuous_attribute('pajak', dlugosc_zycia, 2.0).

animal('skorpion').
attribute('skorpion', dieta, 'miesozerne').
attribute('skorpion', srodowisko, 'ladowe').
attribute('skorpion', skrzydla, 'nie').
attribute('skorpion', nogi, 'osiem').
attribute('skorpion', udomowione, 'nie').
attribute('skorpion', rozrod, 'jajorodne').
attribute('skorpion', futro, 'nie').
attribute('skorpion', klimat, 'cieply').
attribute('skorpion', gromada, 'inne').
attribute('skorpion', stadne, 'nie').
attribute('skorpion', kontynent, 'afryka').
continuous_attribute('skorpion', ciezar, 0.01).
continuous_attribute('skorpion', dlugosc, 10.0).
continuous_attribute('skorpion', dlugosc_zycia, 5.0).

