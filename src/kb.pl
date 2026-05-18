:- module(kb, [animal/1, attribute/3, continuous_attribute/3]).
:- discontiguous animal/1.
:- discontiguous attribute/3.
:- discontiguous continuous_attribute/3.


% Baza wiedzy (100 gatunków)

animal('lew').
attribute('lew', dieta, 'miesozerne').
attribute('lew', srodowisko, 'wodne').
attribute('lew', skrzydla, 'nie').
attribute('lew', nogi, 'brak').
attribute('lew', udomowione, 'nie').
attribute('lew', rozrod, 'jajorodne').
attribute('lew', futro, 'nie').
attribute('lew', klimat, 'cieply').
attribute('lew', gromada, 'ryby').
attribute('lew', stadne, 'nie').
attribute('lew', kontynent, 'afryka').
continuous_attribute('lew', ciezar, 1212.85).
continuous_attribute('lew', dlugosc, 607.69).
continuous_attribute('lew', dlugosc_zycia, 38.17).

animal('tygrys').
attribute('tygrys', dieta, 'wszystkozerne').
attribute('tygrys', srodowisko, 'ladowe').
attribute('tygrys', skrzydla, 'nie').
attribute('tygrys', nogi, 'cztery').
attribute('tygrys', udomowione, 'tak').
attribute('tygrys', rozrod, 'jajorodne').
attribute('tygrys', futro, 'nie').
attribute('tygrys', klimat, 'chlodny').
attribute('tygrys', gromada, 'inne').
attribute('tygrys', stadne, 'tak').
attribute('tygrys', kontynent, 'europa').
continuous_attribute('tygrys', ciezar, 352.87).
continuous_attribute('tygrys', dlugosc, 149.81).
continuous_attribute('tygrys', dlugosc_zycia, 1.4).

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
attribute('niedzwiedz', kontynent, 'afryka').
continuous_attribute('niedzwiedz', ciezar, 1268.64).
continuous_attribute('niedzwiedz', dlugosc, 437.92).
continuous_attribute('niedzwiedz', dlugosc_zycia, 36.38).

animal('wilk').
attribute('wilk', dieta, 'miesozerne').
attribute('wilk', srodowisko, 'powietrzne').
attribute('wilk', skrzydla, 'nie').
attribute('wilk', nogi, 'cztery').
attribute('wilk', udomowione, 'nie').
attribute('wilk', rozrod, 'zyworodne').
attribute('wilk', futro, 'tak').
attribute('wilk', klimat, 'umiarkowany').
attribute('wilk', gromada, 'ssaki').
attribute('wilk', stadne, 'tak').
attribute('wilk', kontynent, 'ameryka_polnocna').
continuous_attribute('wilk', ciezar, 852.43).
continuous_attribute('wilk', dlugosc, 181.22).
continuous_attribute('wilk', dlugosc_zycia, 28.17).

animal('lis').
attribute('lis', dieta, 'roslinozerne').
attribute('lis', srodowisko, 'ladowe').
attribute('lis', skrzydla, 'nie').
attribute('lis', nogi, 'cztery').
attribute('lis', udomowione, 'nie').
attribute('lis', rozrod, 'jajorodne').
attribute('lis', futro, 'nie').
attribute('lis', klimat, 'chlodny').
attribute('lis', gromada, 'inne').
attribute('lis', stadne, 'nie').
attribute('lis', kontynent, 'ameryka_polnocna').
continuous_attribute('lis', ciezar, 1244.18).
continuous_attribute('lis', dlugosc, 186.58).
continuous_attribute('lis', dlugosc_zycia, 38.7).

animal('slon').
attribute('slon', dieta, 'roslinozerne').
attribute('slon', srodowisko, 'wodne').
attribute('slon', skrzydla, 'nie').
attribute('slon', nogi, 'cztery').
attribute('slon', udomowione, 'nie').
attribute('slon', rozrod, 'jajorodne').
attribute('slon', futro, 'nie').
attribute('slon', klimat, 'cieply').
attribute('slon', gromada, 'gady').
attribute('slon', stadne, 'tak').
attribute('slon', kontynent, 'australia').
continuous_attribute('slon', ciezar, 746.8).
continuous_attribute('slon', dlugosc, 615.86).
continuous_attribute('slon', dlugosc_zycia, 11.19).

animal('zyrafa').
attribute('zyrafa', dieta, 'roslinozerne').
attribute('zyrafa', srodowisko, 'ladowe').
attribute('zyrafa', skrzydla, 'nie').
attribute('zyrafa', nogi, 'cztery').
attribute('zyrafa', udomowione, 'tak').
attribute('zyrafa', rozrod, 'jajorodne').
attribute('zyrafa', futro, 'nie').
attribute('zyrafa', klimat, 'chlodny').
attribute('zyrafa', gromada, 'plazy').
attribute('zyrafa', stadne, 'tak').
attribute('zyrafa', kontynent, 'afryka').
continuous_attribute('zyrafa', ciezar, 1141.28).
continuous_attribute('zyrafa', dlugosc, 134.86).
continuous_attribute('zyrafa', dlugosc_zycia, 30.89).

animal('zebra').
attribute('zebra', dieta, 'miesozerne').
attribute('zebra', srodowisko, 'powietrzne').
attribute('zebra', skrzydla, 'tak').
attribute('zebra', nogi, 'dwa').
attribute('zebra', udomowione, 'nie').
attribute('zebra', rozrod, 'jajorodne').
attribute('zebra', futro, 'nie').
attribute('zebra', klimat, 'cieply').
attribute('zebra', gromada, 'ptaki').
attribute('zebra', stadne, 'tak').
attribute('zebra', kontynent, 'azja').
continuous_attribute('zebra', ciezar, 521.71).
continuous_attribute('zebra', dlugosc, 676.82).
continuous_attribute('zebra', dlugosc_zycia, 6.27).

animal('hipopotam').
attribute('hipopotam', dieta, 'miesozerne').
attribute('hipopotam', srodowisko, 'powietrzne').
attribute('hipopotam', skrzydla, 'nie').
attribute('hipopotam', nogi, 'cztery').
attribute('hipopotam', udomowione, 'nie').
attribute('hipopotam', rozrod, 'jajorodne').
attribute('hipopotam', futro, 'nie').
attribute('hipopotam', klimat, 'chlodny').
attribute('hipopotam', gromada, 'inne').
attribute('hipopotam', stadne, 'nie').
attribute('hipopotam', kontynent, 'australia').
continuous_attribute('hipopotam', ciezar, 803.41).
continuous_attribute('hipopotam', dlugosc, 338.39).
continuous_attribute('hipopotam', dlugosc_zycia, 23.91).

animal('nosorozec').
attribute('nosorozec', dieta, 'miesozerne').
attribute('nosorozec', srodowisko, 'powietrzne').
attribute('nosorozec', skrzydla, 'tak').
attribute('nosorozec', nogi, 'dwa').
attribute('nosorozec', udomowione, 'tak').
attribute('nosorozec', rozrod, 'jajorodne').
attribute('nosorozec', futro, 'nie').
attribute('nosorozec', klimat, 'cieply').
attribute('nosorozec', gromada, 'ptaki').
attribute('nosorozec', stadne, 'tak').
attribute('nosorozec', kontynent, 'australia').
continuous_attribute('nosorozec', ciezar, 586.94).
continuous_attribute('nosorozec', dlugosc, 335.83).
continuous_attribute('nosorozec', dlugosc_zycia, 12.78).

animal('krokodyl').
attribute('krokodyl', dieta, 'wszystkozerne').
attribute('krokodyl', srodowisko, 'ladowe').
attribute('krokodyl', skrzydla, 'nie').
attribute('krokodyl', nogi, 'cztery').
attribute('krokodyl', udomowione, 'tak').
attribute('krokodyl', rozrod, 'jajorodne').
attribute('krokodyl', futro, 'nie').
attribute('krokodyl', klimat, 'cieply').
attribute('krokodyl', gromada, 'plazy').
attribute('krokodyl', stadne, 'nie').
attribute('krokodyl', kontynent, 'ameryka_polnocna').
continuous_attribute('krokodyl', ciezar, 1228.49).
continuous_attribute('krokodyl', dlugosc, 609.72).
continuous_attribute('krokodyl', dlugosc_zycia, 18.56).

animal('aligator').
attribute('aligator', dieta, 'wszystkozerne').
attribute('aligator', srodowisko, 'powietrzne').
attribute('aligator', skrzydla, 'nie').
attribute('aligator', nogi, 'cztery').
attribute('aligator', udomowione, 'tak').
attribute('aligator', rozrod, 'zyworodne').
attribute('aligator', futro, 'tak').
attribute('aligator', klimat, 'chlodny').
attribute('aligator', gromada, 'ssaki').
attribute('aligator', stadne, 'nie').
attribute('aligator', kontynent, 'ameryka_poludniowa').
continuous_attribute('aligator', ciezar, 752.18).
continuous_attribute('aligator', dlugosc, 17.68).
continuous_attribute('aligator', dlugosc_zycia, 3.07).

animal('waz_boa').
attribute('waz_boa', dieta, 'wszystkozerne').
attribute('waz_boa', srodowisko, 'wodne').
attribute('waz_boa', skrzydla, 'nie').
attribute('waz_boa', nogi, 'brak').
attribute('waz_boa', udomowione, 'nie').
attribute('waz_boa', rozrod, 'jajorodne').
attribute('waz_boa', futro, 'nie').
attribute('waz_boa', klimat, 'chlodny').
attribute('waz_boa', gromada, 'ryby').
attribute('waz_boa', stadne, 'nie').
attribute('waz_boa', kontynent, 'afryka').
continuous_attribute('waz_boa', ciezar, 532.92).
continuous_attribute('waz_boa', dlugosc, 122.41).
continuous_attribute('waz_boa', dlugosc_zycia, 33.53).

animal('kobra').
attribute('kobra', dieta, 'roslinozerne').
attribute('kobra', srodowisko, 'wodne').
attribute('kobra', skrzydla, 'nie').
attribute('kobra', nogi, 'brak').
attribute('kobra', udomowione, 'nie').
attribute('kobra', rozrod, 'jajorodne').
attribute('kobra', futro, 'nie').
attribute('kobra', klimat, 'chlodny').
attribute('kobra', gromada, 'gady').
attribute('kobra', stadne, 'nie').
attribute('kobra', kontynent, 'australia').
continuous_attribute('kobra', ciezar, 1275.85).
continuous_attribute('kobra', dlugosc, 479.16).
continuous_attribute('kobra', dlugosc_zycia, 29.09).

animal('zmija').
attribute('zmija', dieta, 'miesozerne').
attribute('zmija', srodowisko, 'powietrzne').
attribute('zmija', skrzydla, 'tak').
attribute('zmija', nogi, 'dwa').
attribute('zmija', udomowione, 'tak').
attribute('zmija', rozrod, 'jajorodne').
attribute('zmija', futro, 'nie').
attribute('zmija', klimat, 'cieply').
attribute('zmija', gromada, 'ptaki').
attribute('zmija', stadne, 'tak').
attribute('zmija', kontynent, 'ameryka_polnocna').
continuous_attribute('zmija', ciezar, 764.66).
continuous_attribute('zmija', dlugosc, 103.95).
continuous_attribute('zmija', dlugosc_zycia, 12.08).

animal('zolw_ladowy').
attribute('zolw_ladowy', dieta, 'miesozerne').
attribute('zolw_ladowy', srodowisko, 'ladowe').
attribute('zolw_ladowy', skrzydla, 'nie').
attribute('zolw_ladowy', nogi, 'cztery').
attribute('zolw_ladowy', udomowione, 'nie').
attribute('zolw_ladowy', rozrod, 'zyworodne').
attribute('zolw_ladowy', futro, 'tak').
attribute('zolw_ladowy', klimat, 'umiarkowany').
attribute('zolw_ladowy', gromada, 'ssaki').
attribute('zolw_ladowy', stadne, 'tak').
attribute('zolw_ladowy', kontynent, 'afryka').
continuous_attribute('zolw_ladowy', ciezar, 1083.46).
continuous_attribute('zolw_ladowy', dlugosc, 550.56).
continuous_attribute('zolw_ladowy', dlugosc_zycia, 24.49).

animal('zolw_morski').
attribute('zolw_morski', dieta, 'wszystkozerne').
attribute('zolw_morski', srodowisko, 'wodne').
attribute('zolw_morski', skrzydla, 'nie').
attribute('zolw_morski', nogi, 'brak').
attribute('zolw_morski', udomowione, 'tak').
attribute('zolw_morski', rozrod, 'jajorodne').
attribute('zolw_morski', futro, 'nie').
attribute('zolw_morski', klimat, 'cieply').
attribute('zolw_morski', gromada, 'ryby').
attribute('zolw_morski', stadne, 'tak').
attribute('zolw_morski', kontynent, 'ameryka_polnocna').
continuous_attribute('zolw_morski', ciezar, 1348.33).
continuous_attribute('zolw_morski', dlugosc, 553.52).
continuous_attribute('zolw_morski', dlugosc_zycia, 13.97).

animal('jaszczurka').
attribute('jaszczurka', dieta, 'wszystkozerne').
attribute('jaszczurka', srodowisko, 'wodne').
attribute('jaszczurka', skrzydla, 'nie').
attribute('jaszczurka', nogi, 'brak').
attribute('jaszczurka', udomowione, 'tak').
attribute('jaszczurka', rozrod, 'jajorodne').
attribute('jaszczurka', futro, 'nie').
attribute('jaszczurka', klimat, 'umiarkowany').
attribute('jaszczurka', gromada, 'ryby').
attribute('jaszczurka', stadne, 'tak').
attribute('jaszczurka', kontynent, 'azja').
continuous_attribute('jaszczurka', ciezar, 357.94).
continuous_attribute('jaszczurka', dlugosc, 57.8).
continuous_attribute('jaszczurka', dlugosc_zycia, 1.23).

animal('kameleon').
attribute('kameleon', dieta, 'miesozerne').
attribute('kameleon', srodowisko, 'wodne').
attribute('kameleon', skrzydla, 'nie').
attribute('kameleon', nogi, 'brak').
attribute('kameleon', udomowione, 'nie').
attribute('kameleon', rozrod, 'jajorodne').
attribute('kameleon', futro, 'nie').
attribute('kameleon', klimat, 'umiarkowany').
attribute('kameleon', gromada, 'ryby').
attribute('kameleon', stadne, 'nie').
attribute('kameleon', kontynent, 'europa').
continuous_attribute('kameleon', ciezar, 1225.88).
continuous_attribute('kameleon', dlugosc, 490.4).
continuous_attribute('kameleon', dlugosc_zycia, 33.44).

animal('legwan').
attribute('legwan', dieta, 'wszystkozerne').
attribute('legwan', srodowisko, 'powietrzne').
attribute('legwan', skrzydla, 'tak').
attribute('legwan', nogi, 'dwa').
attribute('legwan', udomowione, 'tak').
attribute('legwan', rozrod, 'jajorodne').
attribute('legwan', futro, 'nie').
attribute('legwan', klimat, 'umiarkowany').
attribute('legwan', gromada, 'ptaki').
attribute('legwan', stadne, 'nie').
attribute('legwan', kontynent, 'azja').
continuous_attribute('legwan', ciezar, 1357.86).
continuous_attribute('legwan', dlugosc, 324.35).
continuous_attribute('legwan', dlugosc_zycia, 13.51).

animal('orzel').
attribute('orzel', dieta, 'roslinozerne').
attribute('orzel', srodowisko, 'wodne').
attribute('orzel', skrzydla, 'nie').
attribute('orzel', nogi, 'cztery').
attribute('orzel', udomowione, 'tak').
attribute('orzel', rozrod, 'jajorodne').
attribute('orzel', futro, 'nie').
attribute('orzel', klimat, 'chlodny').
attribute('orzel', gromada, 'inne').
attribute('orzel', stadne, 'nie').
attribute('orzel', kontynent, 'europa').
continuous_attribute('orzel', ciezar, 1262.64).
continuous_attribute('orzel', dlugosc, 450.35).
continuous_attribute('orzel', dlugosc_zycia, 3.8).

animal('sokol').
attribute('sokol', dieta, 'wszystkozerne').
attribute('sokol', srodowisko, 'wodne').
attribute('sokol', skrzydla, 'nie').
attribute('sokol', nogi, 'cztery').
attribute('sokol', udomowione, 'nie').
attribute('sokol', rozrod, 'jajorodne').
attribute('sokol', futro, 'nie').
attribute('sokol', klimat, 'cieply').
attribute('sokol', gromada, 'gady').
attribute('sokol', stadne, 'nie').
attribute('sokol', kontynent, 'australia').
continuous_attribute('sokol', ciezar, 518.04).
continuous_attribute('sokol', dlugosc, 252.0).
continuous_attribute('sokol', dlugosc_zycia, 39.32).

animal('jastrzab').
attribute('jastrzab', dieta, 'roslinozerne').
attribute('jastrzab', srodowisko, 'ladowe').
attribute('jastrzab', skrzydla, 'nie').
attribute('jastrzab', nogi, 'cztery').
attribute('jastrzab', udomowione, 'tak').
attribute('jastrzab', rozrod, 'jajorodne').
attribute('jastrzab', futro, 'nie').
attribute('jastrzab', klimat, 'umiarkowany').
attribute('jastrzab', gromada, 'inne').
attribute('jastrzab', stadne, 'tak').
attribute('jastrzab', kontynent, 'ameryka_poludniowa').
continuous_attribute('jastrzab', ciezar, 273.45).
continuous_attribute('jastrzab', dlugosc, 122.93).
continuous_attribute('jastrzab', dlugosc_zycia, 13.29).

animal('sowa').
attribute('sowa', dieta, 'roslinozerne').
attribute('sowa', srodowisko, 'wodne').
attribute('sowa', skrzydla, 'nie').
attribute('sowa', nogi, 'cztery').
attribute('sowa', udomowione, 'nie').
attribute('sowa', rozrod, 'zyworodne').
attribute('sowa', futro, 'tak').
attribute('sowa', klimat, 'umiarkowany').
attribute('sowa', gromada, 'ssaki').
attribute('sowa', stadne, 'nie').
attribute('sowa', kontynent, 'australia').
continuous_attribute('sowa', ciezar, 1456.68).
continuous_attribute('sowa', dlugosc, 85.89).
continuous_attribute('sowa', dlugosc_zycia, 4.93).

animal('wrobel').
attribute('wrobel', dieta, 'roslinozerne').
attribute('wrobel', srodowisko, 'powietrzne').
attribute('wrobel', skrzydla, 'tak').
attribute('wrobel', nogi, 'dwa').
attribute('wrobel', udomowione, 'tak').
attribute('wrobel', rozrod, 'jajorodne').
attribute('wrobel', futro, 'nie').
attribute('wrobel', klimat, 'chlodny').
attribute('wrobel', gromada, 'ptaki').
attribute('wrobel', stadne, 'tak').
attribute('wrobel', kontynent, 'australia').
continuous_attribute('wrobel', ciezar, 814.49).
continuous_attribute('wrobel', dlugosc, 204.63).
continuous_attribute('wrobel', dlugosc_zycia, 24.84).

animal('goleb').
attribute('goleb', dieta, 'wszystkozerne').
attribute('goleb', srodowisko, 'wodne').
attribute('goleb', skrzydla, 'nie').
attribute('goleb', nogi, 'cztery').
attribute('goleb', udomowione, 'nie').
attribute('goleb', rozrod, 'jajorodne').
attribute('goleb', futro, 'nie').
attribute('goleb', klimat, 'cieply').
attribute('goleb', gromada, 'gady').
attribute('goleb', stadne, 'nie').
attribute('goleb', kontynent, 'afryka').
continuous_attribute('goleb', ciezar, 1338.38).
continuous_attribute('goleb', dlugosc, 21.26).
continuous_attribute('goleb', dlugosc_zycia, 15.81).

animal('kruk').
attribute('kruk', dieta, 'wszystkozerne').
attribute('kruk', srodowisko, 'ladowe').
attribute('kruk', skrzydla, 'nie').
attribute('kruk', nogi, 'cztery').
attribute('kruk', udomowione, 'nie').
attribute('kruk', rozrod, 'jajorodne').
attribute('kruk', futro, 'nie').
attribute('kruk', klimat, 'umiarkowany').
attribute('kruk', gromada, 'inne').
attribute('kruk', stadne, 'nie').
attribute('kruk', kontynent, 'ameryka_poludniowa').
continuous_attribute('kruk', ciezar, 340.35).
continuous_attribute('kruk', dlugosc, 426.12).
continuous_attribute('kruk', dlugosc_zycia, 25.88).

animal('papuga').
attribute('papuga', dieta, 'miesozerne').
attribute('papuga', srodowisko, 'wodne').
attribute('papuga', skrzydla, 'nie').
attribute('papuga', nogi, 'brak').
attribute('papuga', udomowione, 'tak').
attribute('papuga', rozrod, 'jajorodne').
attribute('papuga', futro, 'nie').
attribute('papuga', klimat, 'umiarkowany').
attribute('papuga', gromada, 'ryby').
attribute('papuga', stadne, 'nie').
attribute('papuga', kontynent, 'australia').
continuous_attribute('papuga', ciezar, 798.32).
continuous_attribute('papuga', dlugosc, 400.8).
continuous_attribute('papuga', dlugosc_zycia, 2.99).

animal('pingwin').
attribute('pingwin', dieta, 'miesozerne').
attribute('pingwin', srodowisko, 'powietrzne').
attribute('pingwin', skrzydla, 'nie').
attribute('pingwin', nogi, 'cztery').
attribute('pingwin', udomowione, 'tak').
attribute('pingwin', rozrod, 'jajorodne').
attribute('pingwin', futro, 'nie').
attribute('pingwin', klimat, 'chlodny').
attribute('pingwin', gromada, 'plazy').
attribute('pingwin', stadne, 'nie').
attribute('pingwin', kontynent, 'azja').
continuous_attribute('pingwin', ciezar, 832.71).
continuous_attribute('pingwin', dlugosc, 424.59).
continuous_attribute('pingwin', dlugosc_zycia, 2.86).

animal('struc').
attribute('struc', dieta, 'roslinozerne').
attribute('struc', srodowisko, 'wodne').
attribute('struc', skrzydla, 'nie').
attribute('struc', nogi, 'cztery').
attribute('struc', udomowione, 'tak').
attribute('struc', rozrod, 'jajorodne').
attribute('struc', futro, 'nie').
attribute('struc', klimat, 'umiarkowany').
attribute('struc', gromada, 'plazy').
attribute('struc', stadne, 'nie').
attribute('struc', kontynent, 'ameryka_polnocna').
continuous_attribute('struc', ciezar, 541.48).
continuous_attribute('struc', dlugosc, 414.56).
continuous_attribute('struc', dlugosc_zycia, 18.22).

animal('rekin').
attribute('rekin', dieta, 'miesozerne').
attribute('rekin', srodowisko, 'ladowe').
attribute('rekin', skrzydla, 'nie').
attribute('rekin', nogi, 'cztery').
attribute('rekin', udomowione, 'tak').
attribute('rekin', rozrod, 'jajorodne').
attribute('rekin', futro, 'nie').
attribute('rekin', klimat, 'umiarkowany').
attribute('rekin', gromada, 'inne').
attribute('rekin', stadne, 'nie').
attribute('rekin', kontynent, 'azja').
continuous_attribute('rekin', ciezar, 1158.97).
continuous_attribute('rekin', dlugosc, 210.21).
continuous_attribute('rekin', dlugosc_zycia, 34.4).

animal('delfin').
attribute('delfin', dieta, 'roslinozerne').
attribute('delfin', srodowisko, 'ladowe').
attribute('delfin', skrzydla, 'nie').
attribute('delfin', nogi, 'cztery').
attribute('delfin', udomowione, 'nie').
attribute('delfin', rozrod, 'jajorodne').
attribute('delfin', futro, 'nie').
attribute('delfin', klimat, 'chlodny').
attribute('delfin', gromada, 'gady').
attribute('delfin', stadne, 'tak').
attribute('delfin', kontynent, 'azja').
continuous_attribute('delfin', ciezar, 742.59).
continuous_attribute('delfin', dlugosc, 369.05).
continuous_attribute('delfin', dlugosc_zycia, 18.28).

animal('wieloryb').
attribute('wieloryb', dieta, 'miesozerne').
attribute('wieloryb', srodowisko, 'powietrzne').
attribute('wieloryb', skrzydla, 'nie').
attribute('wieloryb', nogi, 'cztery').
attribute('wieloryb', udomowione, 'tak').
attribute('wieloryb', rozrod, 'jajorodne').
attribute('wieloryb', futro, 'nie').
attribute('wieloryb', klimat, 'cieply').
attribute('wieloryb', gromada, 'plazy').
attribute('wieloryb', stadne, 'nie').
attribute('wieloryb', kontynent, 'ameryka_poludniowa').
continuous_attribute('wieloryb', ciezar, 704.95).
continuous_attribute('wieloryb', dlugosc, 138.24).
continuous_attribute('wieloryb', dlugosc_zycia, 14.2).

animal('orka').
attribute('orka', dieta, 'miesozerne').
attribute('orka', srodowisko, 'wodne').
attribute('orka', skrzydla, 'nie').
attribute('orka', nogi, 'brak').
attribute('orka', udomowione, 'tak').
attribute('orka', rozrod, 'jajorodne').
attribute('orka', futro, 'nie').
attribute('orka', klimat, 'cieply').
attribute('orka', gromada, 'ryby').
attribute('orka', stadne, 'tak').
attribute('orka', kontynent, 'afryka').
continuous_attribute('orka', ciezar, 565.61).
continuous_attribute('orka', dlugosc, 390.97).
continuous_attribute('orka', dlugosc_zycia, 6.92).

animal('losos').
attribute('losos', dieta, 'roslinozerne').
attribute('losos', srodowisko, 'wodne').
attribute('losos', skrzydla, 'nie').
attribute('losos', nogi, 'cztery').
attribute('losos', udomowione, 'nie').
attribute('losos', rozrod, 'jajorodne').
attribute('losos', futro, 'nie').
attribute('losos', klimat, 'chlodny').
attribute('losos', gromada, 'plazy').
attribute('losos', stadne, 'tak').
attribute('losos', kontynent, 'afryka').
continuous_attribute('losos', ciezar, 1321.74).
continuous_attribute('losos', dlugosc, 695.47).
continuous_attribute('losos', dlugosc_zycia, 12.85).

animal('karp').
attribute('karp', dieta, 'miesozerne').
attribute('karp', srodowisko, 'wodne').
attribute('karp', skrzydla, 'nie').
attribute('karp', nogi, 'brak').
attribute('karp', udomowione, 'nie').
attribute('karp', rozrod, 'jajorodne').
attribute('karp', futro, 'nie').
attribute('karp', klimat, 'umiarkowany').
attribute('karp', gromada, 'ryby').
attribute('karp', stadne, 'nie').
attribute('karp', kontynent, 'ameryka_poludniowa').
continuous_attribute('karp', ciezar, 604.41).
continuous_attribute('karp', dlugosc, 611.0).
continuous_attribute('karp', dlugosc_zycia, 2.93).

animal('szczupak').
attribute('szczupak', dieta, 'roslinozerne').
attribute('szczupak', srodowisko, 'ladowe').
attribute('szczupak', skrzydla, 'nie').
attribute('szczupak', nogi, 'cztery').
attribute('szczupak', udomowione, 'tak').
attribute('szczupak', rozrod, 'jajorodne').
attribute('szczupak', futro, 'nie').
attribute('szczupak', klimat, 'chlodny').
attribute('szczupak', gromada, 'inne').
attribute('szczupak', stadne, 'nie').
attribute('szczupak', kontynent, 'australia').
continuous_attribute('szczupak', ciezar, 241.24).
continuous_attribute('szczupak', dlugosc, 659.0).
continuous_attribute('szczupak', dlugosc_zycia, 39.89).

animal('mors').
attribute('mors', dieta, 'miesozerne').
attribute('mors', srodowisko, 'wodne').
attribute('mors', skrzydla, 'nie').
attribute('mors', nogi, 'brak').
attribute('mors', udomowione, 'tak').
attribute('mors', rozrod, 'jajorodne').
attribute('mors', futro, 'nie').
attribute('mors', klimat, 'cieply').
attribute('mors', gromada, 'ryby').
attribute('mors', stadne, 'tak').
attribute('mors', kontynent, 'azja').
continuous_attribute('mors', ciezar, 178.44).
continuous_attribute('mors', dlugosc, 683.52).
continuous_attribute('mors', dlugosc_zycia, 12.75).

animal('foka').
attribute('foka', dieta, 'wszystkozerne').
attribute('foka', srodowisko, 'wodne').
attribute('foka', skrzydla, 'nie').
attribute('foka', nogi, 'cztery').
attribute('foka', udomowione, 'tak').
attribute('foka', rozrod, 'jajorodne').
attribute('foka', futro, 'nie').
attribute('foka', klimat, 'cieply').
attribute('foka', gromada, 'plazy').
attribute('foka', stadne, 'tak').
attribute('foka', kontynent, 'antarktyda').
continuous_attribute('foka', ciezar, 464.88).
continuous_attribute('foka', dlugosc, 475.76).
continuous_attribute('foka', dlugosc_zycia, 30.97).

animal('wydra').
attribute('wydra', dieta, 'roslinozerne').
attribute('wydra', srodowisko, 'ladowe').
attribute('wydra', skrzydla, 'nie').
attribute('wydra', nogi, 'cztery').
attribute('wydra', udomowione, 'nie').
attribute('wydra', rozrod, 'jajorodne').
attribute('wydra', futro, 'nie').
attribute('wydra', klimat, 'cieply').
attribute('wydra', gromada, 'gady').
attribute('wydra', stadne, 'nie').
attribute('wydra', kontynent, 'europa').
continuous_attribute('wydra', ciezar, 205.23).
continuous_attribute('wydra', dlugosc, 445.27).
continuous_attribute('wydra', dlugosc_zycia, 29.14).

animal('zaba').
attribute('zaba', dieta, 'wszystkozerne').
attribute('zaba', srodowisko, 'wodne').
attribute('zaba', skrzydla, 'nie').
attribute('zaba', nogi, 'brak').
attribute('zaba', udomowione, 'tak').
attribute('zaba', rozrod, 'jajorodne').
attribute('zaba', futro, 'nie').
attribute('zaba', klimat, 'chlodny').
attribute('zaba', gromada, 'ryby').
attribute('zaba', stadne, 'nie').
attribute('zaba', kontynent, 'afryka').
continuous_attribute('zaba', ciezar, 105.64).
continuous_attribute('zaba', dlugosc, 614.65).
continuous_attribute('zaba', dlugosc_zycia, 15.64).

animal('ropucha').
attribute('ropucha', dieta, 'roslinozerne').
attribute('ropucha', srodowisko, 'powietrzne').
attribute('ropucha', skrzydla, 'nie').
attribute('ropucha', nogi, 'cztery').
attribute('ropucha', udomowione, 'nie').
attribute('ropucha', rozrod, 'zyworodne').
attribute('ropucha', futro, 'tak').
attribute('ropucha', klimat, 'umiarkowany').
attribute('ropucha', gromada, 'ssaki').
attribute('ropucha', stadne, 'tak').
attribute('ropucha', kontynent, 'afryka').
continuous_attribute('ropucha', ciezar, 302.84).
continuous_attribute('ropucha', dlugosc, 640.76).
continuous_attribute('ropucha', dlugosc_zycia, 33.28).

animal('salamandra').
attribute('salamandra', dieta, 'roslinozerne').
attribute('salamandra', srodowisko, 'ladowe').
attribute('salamandra', skrzydla, 'nie').
attribute('salamandra', nogi, 'cztery').
attribute('salamandra', udomowione, 'tak').
attribute('salamandra', rozrod, 'jajorodne').
attribute('salamandra', futro, 'nie').
attribute('salamandra', klimat, 'umiarkowany').
attribute('salamandra', gromada, 'inne').
attribute('salamandra', stadne, 'nie').
attribute('salamandra', kontynent, 'antarktyda').
continuous_attribute('salamandra', ciezar, 77.86).
continuous_attribute('salamandra', dlugosc, 653.96).
continuous_attribute('salamandra', dlugosc_zycia, 13.01).

animal('traszka').
attribute('traszka', dieta, 'wszystkozerne').
attribute('traszka', srodowisko, 'ladowe').
attribute('traszka', skrzydla, 'nie').
attribute('traszka', nogi, 'cztery').
attribute('traszka', udomowione, 'nie').
attribute('traszka', rozrod, 'jajorodne').
attribute('traszka', futro, 'nie').
attribute('traszka', klimat, 'cieply').
attribute('traszka', gromada, 'gady').
attribute('traszka', stadne, 'nie').
attribute('traszka', kontynent, 'ameryka_polnocna').
continuous_attribute('traszka', ciezar, 447.44).
continuous_attribute('traszka', dlugosc, 81.48).
continuous_attribute('traszka', dlugosc_zycia, 16.17).

animal('kumak').
attribute('kumak', dieta, 'roslinozerne').
attribute('kumak', srodowisko, 'powietrzne').
attribute('kumak', skrzydla, 'tak').
attribute('kumak', nogi, 'dwa').
attribute('kumak', udomowione, 'nie').
attribute('kumak', rozrod, 'jajorodne').
attribute('kumak', futro, 'nie').
attribute('kumak', klimat, 'chlodny').
attribute('kumak', gromada, 'ptaki').
attribute('kumak', stadne, 'tak').
attribute('kumak', kontynent, 'europa').
continuous_attribute('kumak', ciezar, 509.8).
continuous_attribute('kumak', dlugosc, 63.08).
continuous_attribute('kumak', dlugosc_zycia, 24.72).

animal('krowa').
attribute('krowa', dieta, 'miesozerne').
attribute('krowa', srodowisko, 'wodne').
attribute('krowa', skrzydla, 'nie').
attribute('krowa', nogi, 'cztery').
attribute('krowa', udomowione, 'nie').
attribute('krowa', rozrod, 'zyworodne').
attribute('krowa', futro, 'tak').
attribute('krowa', klimat, 'umiarkowany').
attribute('krowa', gromada, 'ssaki').
attribute('krowa', stadne, 'nie').
attribute('krowa', kontynent, 'afryka').
continuous_attribute('krowa', ciezar, 1047.1).
continuous_attribute('krowa', dlugosc, 662.49).
continuous_attribute('krowa', dlugosc_zycia, 8.45).

animal('kon').
attribute('kon', dieta, 'wszystkozerne').
attribute('kon', srodowisko, 'wodne').
attribute('kon', skrzydla, 'nie').
attribute('kon', nogi, 'cztery').
attribute('kon', udomowione, 'tak').
attribute('kon', rozrod, 'jajorodne').
attribute('kon', futro, 'nie').
attribute('kon', klimat, 'umiarkowany').
attribute('kon', gromada, 'inne').
attribute('kon', stadne, 'tak').
attribute('kon', kontynent, 'afryka').
continuous_attribute('kon', ciezar, 685.15).
continuous_attribute('kon', dlugosc, 79.87).
continuous_attribute('kon', dlugosc_zycia, 37.9).

animal('swinia').
attribute('swinia', dieta, 'wszystkozerne').
attribute('swinia', srodowisko, 'wodne').
attribute('swinia', skrzydla, 'nie').
attribute('swinia', nogi, 'brak').
attribute('swinia', udomowione, 'nie').
attribute('swinia', rozrod, 'jajorodne').
attribute('swinia', futro, 'nie').
attribute('swinia', klimat, 'chlodny').
attribute('swinia', gromada, 'ryby').
attribute('swinia', stadne, 'nie').
attribute('swinia', kontynent, 'europa').
continuous_attribute('swinia', ciezar, 1062.02).
continuous_attribute('swinia', dlugosc, 50.82).
continuous_attribute('swinia', dlugosc_zycia, 24.46).

animal('owca').
attribute('owca', dieta, 'wszystkozerne').
attribute('owca', srodowisko, 'wodne').
attribute('owca', skrzydla, 'nie').
attribute('owca', nogi, 'brak').
attribute('owca', udomowione, 'tak').
attribute('owca', rozrod, 'jajorodne').
attribute('owca', futro, 'nie').
attribute('owca', klimat, 'chlodny').
attribute('owca', gromada, 'ryby').
attribute('owca', stadne, 'tak').
attribute('owca', kontynent, 'ameryka_poludniowa').
continuous_attribute('owca', ciezar, 374.88).
continuous_attribute('owca', dlugosc, 489.47).
continuous_attribute('owca', dlugosc_zycia, 17.18).

animal('koza').
attribute('koza', dieta, 'miesozerne').
attribute('koza', srodowisko, 'wodne').
attribute('koza', skrzydla, 'nie').
attribute('koza', nogi, 'brak').
attribute('koza', udomowione, 'nie').
attribute('koza', rozrod, 'jajorodne').
attribute('koza', futro, 'nie').
attribute('koza', klimat, 'chlodny').
attribute('koza', gromada, 'ryby').
attribute('koza', stadne, 'nie').
attribute('koza', kontynent, 'antarktyda').
continuous_attribute('koza', ciezar, 280.6).
continuous_attribute('koza', dlugosc, 41.49).
continuous_attribute('koza', dlugosc_zycia, 5.9).

animal('pies').
attribute('pies', dieta, 'wszystkozerne').
attribute('pies', srodowisko, 'wodne').
attribute('pies', skrzydla, 'nie').
attribute('pies', nogi, 'brak').
attribute('pies', udomowione, 'tak').
attribute('pies', rozrod, 'jajorodne').
attribute('pies', futro, 'nie').
attribute('pies', klimat, 'chlodny').
attribute('pies', gromada, 'ryby').
attribute('pies', stadne, 'nie').
attribute('pies', kontynent, 'australia').
continuous_attribute('pies', ciezar, 384.36).
continuous_attribute('pies', dlugosc, 655.81).
continuous_attribute('pies', dlugosc_zycia, 37.24).

animal('kot').
attribute('kot', dieta, 'roslinozerne').
attribute('kot', srodowisko, 'wodne').
attribute('kot', skrzydla, 'nie').
attribute('kot', nogi, 'brak').
attribute('kot', udomowione, 'tak').
attribute('kot', rozrod, 'jajorodne').
attribute('kot', futro, 'nie').
attribute('kot', klimat, 'umiarkowany').
attribute('kot', gromada, 'ryby').
attribute('kot', stadne, 'tak').
attribute('kot', kontynent, 'afryka').
continuous_attribute('kot', ciezar, 1053.87).
continuous_attribute('kot', dlugosc, 613.1).
continuous_attribute('kot', dlugosc_zycia, 31.75).

animal('krolik').
attribute('krolik', dieta, 'roslinozerne').
attribute('krolik', srodowisko, 'powietrzne').
attribute('krolik', skrzydla, 'nie').
attribute('krolik', nogi, 'cztery').
attribute('krolik', udomowione, 'tak').
attribute('krolik', rozrod, 'jajorodne').
attribute('krolik', futro, 'nie').
attribute('krolik', klimat, 'chlodny').
attribute('krolik', gromada, 'gady').
attribute('krolik', stadne, 'tak').
attribute('krolik', kontynent, 'ameryka_poludniowa').
continuous_attribute('krolik', ciezar, 679.84).
continuous_attribute('krolik', dlugosc, 194.22).
continuous_attribute('krolik', dlugosc_zycia, 13.39).

animal('chomik').
attribute('chomik', dieta, 'roslinozerne').
attribute('chomik', srodowisko, 'powietrzne').
attribute('chomik', skrzydla, 'nie').
attribute('chomik', nogi, 'cztery').
attribute('chomik', udomowione, 'tak').
attribute('chomik', rozrod, 'jajorodne').
attribute('chomik', futro, 'nie').
attribute('chomik', klimat, 'chlodny').
attribute('chomik', gromada, 'gady').
attribute('chomik', stadne, 'nie').
attribute('chomik', kontynent, 'afryka').
continuous_attribute('chomik', ciezar, 1411.2).
continuous_attribute('chomik', dlugosc, 474.87).
continuous_attribute('chomik', dlugosc_zycia, 2.23).

animal('swinka_morska').
attribute('swinka_morska', dieta, 'roslinozerne').
attribute('swinka_morska', srodowisko, 'powietrzne').
attribute('swinka_morska', skrzydla, 'nie').
attribute('swinka_morska', nogi, 'cztery').
attribute('swinka_morska', udomowione, 'tak').
attribute('swinka_morska', rozrod, 'jajorodne').
attribute('swinka_morska', futro, 'nie').
attribute('swinka_morska', klimat, 'chlodny').
attribute('swinka_morska', gromada, 'plazy').
attribute('swinka_morska', stadne, 'nie').
attribute('swinka_morska', kontynent, 'ameryka_poludniowa').
continuous_attribute('swinka_morska', ciezar, 1008.59).
continuous_attribute('swinka_morska', dlugosc, 120.92).
continuous_attribute('swinka_morska', dlugosc_zycia, 19.14).

animal('mysz').
attribute('mysz', dieta, 'wszystkozerne').
attribute('mysz', srodowisko, 'powietrzne').
attribute('mysz', skrzydla, 'nie').
attribute('mysz', nogi, 'cztery').
attribute('mysz', udomowione, 'tak').
attribute('mysz', rozrod, 'jajorodne').
attribute('mysz', futro, 'nie').
attribute('mysz', klimat, 'umiarkowany').
attribute('mysz', gromada, 'gady').
attribute('mysz', stadne, 'nie').
attribute('mysz', kontynent, 'ameryka_poludniowa').
continuous_attribute('mysz', ciezar, 919.07).
continuous_attribute('mysz', dlugosc, 671.68).
continuous_attribute('mysz', dlugosc_zycia, 38.77).

animal('szczur').
attribute('szczur', dieta, 'wszystkozerne').
attribute('szczur', srodowisko, 'wodne').
attribute('szczur', skrzydla, 'nie').
attribute('szczur', nogi, 'cztery').
attribute('szczur', udomowione, 'tak').
attribute('szczur', rozrod, 'zyworodne').
attribute('szczur', futro, 'tak').
attribute('szczur', klimat, 'umiarkowany').
attribute('szczur', gromada, 'ssaki').
attribute('szczur', stadne, 'tak').
attribute('szczur', kontynent, 'antarktyda').
continuous_attribute('szczur', ciezar, 1476.19).
continuous_attribute('szczur', dlugosc, 211.24).
continuous_attribute('szczur', dlugosc_zycia, 2.48).

animal('wiewiorka').
attribute('wiewiorka', dieta, 'roslinozerne').
attribute('wiewiorka', srodowisko, 'wodne').
attribute('wiewiorka', skrzydla, 'nie').
attribute('wiewiorka', nogi, 'cztery').
attribute('wiewiorka', udomowione, 'nie').
attribute('wiewiorka', rozrod, 'jajorodne').
attribute('wiewiorka', futro, 'nie').
attribute('wiewiorka', klimat, 'umiarkowany').
attribute('wiewiorka', gromada, 'gady').
attribute('wiewiorka', stadne, 'nie').
attribute('wiewiorka', kontynent, 'afryka').
continuous_attribute('wiewiorka', ciezar, 489.88).
continuous_attribute('wiewiorka', dlugosc, 488.78).
continuous_attribute('wiewiorka', dlugosc_zycia, 9.32).

animal('bobr').
attribute('bobr', dieta, 'miesozerne').
attribute('bobr', srodowisko, 'wodne').
attribute('bobr', skrzydla, 'nie').
attribute('bobr', nogi, 'cztery').
attribute('bobr', udomowione, 'nie').
attribute('bobr', rozrod, 'zyworodne').
attribute('bobr', futro, 'tak').
attribute('bobr', klimat, 'cieply').
attribute('bobr', gromada, 'ssaki').
attribute('bobr', stadne, 'tak').
attribute('bobr', kontynent, 'ameryka_poludniowa').
continuous_attribute('bobr', ciezar, 1064.66).
continuous_attribute('bobr', dlugosc, 562.63).
continuous_attribute('bobr', dlugosc_zycia, 11.59).

animal('jeoz').
attribute('jeoz', dieta, 'miesozerne').
attribute('jeoz', srodowisko, 'powietrzne').
attribute('jeoz', skrzydla, 'tak').
attribute('jeoz', nogi, 'dwa').
attribute('jeoz', udomowione, 'nie').
attribute('jeoz', rozrod, 'jajorodne').
attribute('jeoz', futro, 'nie').
attribute('jeoz', klimat, 'chlodny').
attribute('jeoz', gromada, 'ptaki').
attribute('jeoz', stadne, 'nie').
attribute('jeoz', kontynent, 'ameryka_poludniowa').
continuous_attribute('jeoz', ciezar, 1350.55).
continuous_attribute('jeoz', dlugosc, 88.82).
continuous_attribute('jeoz', dlugosc_zycia, 19.23).

animal('kangur').
attribute('kangur', dieta, 'miesozerne').
attribute('kangur', srodowisko, 'powietrzne').
attribute('kangur', skrzydla, 'nie').
attribute('kangur', nogi, 'dwa').
attribute('kangur', udomowione, 'tak').
attribute('kangur', rozrod, 'jajorodne').
attribute('kangur', futro, 'nie').
attribute('kangur', klimat, 'cieply').
attribute('kangur', gromada, 'inne').
attribute('kangur', stadne, 'nie').
attribute('kangur', kontynent, 'antarktyda').
continuous_attribute('kangur', ciezar, 1464.2).
continuous_attribute('kangur', dlugosc, 157.02).
continuous_attribute('kangur', dlugosc_zycia, 28.9).

animal('koala').
attribute('koala', dieta, 'roslinozerne').
attribute('koala', srodowisko, 'powietrzne').
attribute('koala', skrzydla, 'tak').
attribute('koala', nogi, 'dwa').
attribute('koala', udomowione, 'tak').
attribute('koala', rozrod, 'jajorodne').
attribute('koala', futro, 'nie').
attribute('koala', klimat, 'chlodny').
attribute('koala', gromada, 'ptaki').
attribute('koala', stadne, 'nie').
attribute('koala', kontynent, 'ameryka_polnocna').
continuous_attribute('koala', ciezar, 1146.68).
continuous_attribute('koala', dlugosc, 6.03).
continuous_attribute('koala', dlugosc_zycia, 37.54).

animal('dziobak').
attribute('dziobak', dieta, 'miesozerne').
attribute('dziobak', srodowisko, 'powietrzne').
attribute('dziobak', skrzydla, 'nie').
attribute('dziobak', nogi, 'cztery').
attribute('dziobak', udomowione, 'tak').
attribute('dziobak', rozrod, 'jajorodne').
attribute('dziobak', futro, 'nie').
attribute('dziobak', klimat, 'cieply').
attribute('dziobak', gromada, 'plazy').
attribute('dziobak', stadne, 'nie').
attribute('dziobak', kontynent, 'ameryka_poludniowa').
continuous_attribute('dziobak', ciezar, 551.85).
continuous_attribute('dziobak', dlugosc, 150.31).
continuous_attribute('dziobak', dlugosc_zycia, 3.71).

animal('kolczatka').
attribute('kolczatka', dieta, 'miesozerne').
attribute('kolczatka', srodowisko, 'powietrzne').
attribute('kolczatka', skrzydla, 'nie').
attribute('kolczatka', nogi, 'cztery').
attribute('kolczatka', udomowione, 'tak').
attribute('kolczatka', rozrod, 'jajorodne').
attribute('kolczatka', futro, 'nie').
attribute('kolczatka', klimat, 'umiarkowany').
attribute('kolczatka', gromada, 'inne').
attribute('kolczatka', stadne, 'tak').
attribute('kolczatka', kontynent, 'australia').
continuous_attribute('kolczatka', ciezar, 1404.84).
continuous_attribute('kolczatka', dlugosc, 49.87).
continuous_attribute('kolczatka', dlugosc_zycia, 4.97).

animal('wombat').
attribute('wombat', dieta, 'miesozerne').
attribute('wombat', srodowisko, 'powietrzne').
attribute('wombat', skrzydla, 'nie').
attribute('wombat', nogi, 'cztery').
attribute('wombat', udomowione, 'nie').
attribute('wombat', rozrod, 'jajorodne').
attribute('wombat', futro, 'nie').
attribute('wombat', klimat, 'cieply').
attribute('wombat', gromada, 'inne').
attribute('wombat', stadne, 'tak').
attribute('wombat', kontynent, 'europa').
continuous_attribute('wombat', ciezar, 633.11).
continuous_attribute('wombat', dlugosc, 353.28).
continuous_attribute('wombat', dlugosc_zycia, 36.94).

animal('emu').
attribute('emu', dieta, 'miesozerne').
attribute('emu', srodowisko, 'wodne').
attribute('emu', skrzydla, 'nie').
attribute('emu', nogi, 'dwa').
attribute('emu', udomowione, 'nie').
attribute('emu', rozrod, 'zyworodne').
attribute('emu', futro, 'tak').
attribute('emu', klimat, 'umiarkowany').
attribute('emu', gromada, 'ssaki').
attribute('emu', stadne, 'tak').
attribute('emu', kontynent, 'afryka').
continuous_attribute('emu', ciezar, 1017.66).
continuous_attribute('emu', dlugosc, 285.77).
continuous_attribute('emu', dlugosc_zycia, 4.6).

animal('kiwi').
attribute('kiwi', dieta, 'miesozerne').
attribute('kiwi', srodowisko, 'wodne').
attribute('kiwi', skrzydla, 'nie').
attribute('kiwi', nogi, 'dwa').
attribute('kiwi', udomowione, 'nie').
attribute('kiwi', rozrod, 'jajorodne').
attribute('kiwi', futro, 'nie').
attribute('kiwi', klimat, 'cieply').
attribute('kiwi', gromada, 'gady').
attribute('kiwi', stadne, 'nie').
attribute('kiwi', kontynent, 'ameryka_poludniowa').
continuous_attribute('kiwi', ciezar, 1311.33).
continuous_attribute('kiwi', dlugosc, 186.72).
continuous_attribute('kiwi', dlugosc_zycia, 35.98).

animal('diabel_tasmanski').
attribute('diabel_tasmanski', dieta, 'miesozerne').
attribute('diabel_tasmanski', srodowisko, 'wodne').
attribute('diabel_tasmanski', skrzydla, 'nie').
attribute('diabel_tasmanski', nogi, 'cztery').
attribute('diabel_tasmanski', udomowione, 'nie').
attribute('diabel_tasmanski', rozrod, 'jajorodne').
attribute('diabel_tasmanski', futro, 'nie').
attribute('diabel_tasmanski', klimat, 'cieply').
attribute('diabel_tasmanski', gromada, 'plazy').
attribute('diabel_tasmanski', stadne, 'nie').
attribute('diabel_tasmanski', kontynent, 'australia').
continuous_attribute('diabel_tasmanski', ciezar, 605.28).
continuous_attribute('diabel_tasmanski', dlugosc, 620.36).
continuous_attribute('diabel_tasmanski', dlugosc_zycia, 38.59).

animal('dingo').
attribute('dingo', dieta, 'wszystkozerne').
attribute('dingo', srodowisko, 'powietrzne').
attribute('dingo', skrzydla, 'tak').
attribute('dingo', nogi, 'dwa').
attribute('dingo', udomowione, 'nie').
attribute('dingo', rozrod, 'jajorodne').
attribute('dingo', futro, 'nie').
attribute('dingo', klimat, 'umiarkowany').
attribute('dingo', gromada, 'ptaki').
attribute('dingo', stadne, 'tak').
attribute('dingo', kontynent, 'australia').
continuous_attribute('dingo', ciezar, 900.55).
continuous_attribute('dingo', dlugosc, 684.46).
continuous_attribute('dingo', dlugosc_zycia, 15.26).

animal('kazuar').
attribute('kazuar', dieta, 'miesozerne').
attribute('kazuar', srodowisko, 'powietrzne').
attribute('kazuar', skrzydla, 'nie').
attribute('kazuar', nogi, 'cztery').
attribute('kazuar', udomowione, 'tak').
attribute('kazuar', rozrod, 'zyworodne').
attribute('kazuar', futro, 'tak').
attribute('kazuar', klimat, 'chlodny').
attribute('kazuar', gromada, 'ssaki').
attribute('kazuar', stadne, 'tak').
attribute('kazuar', kontynent, 'azja').
continuous_attribute('kazuar', ciezar, 589.9).
continuous_attribute('kazuar', dlugosc, 304.8).
continuous_attribute('kazuar', dlugosc_zycia, 5.74).

animal('bawol').
attribute('bawol', dieta, 'miesozerne').
attribute('bawol', srodowisko, 'ladowe').
attribute('bawol', skrzydla, 'nie').
attribute('bawol', nogi, 'cztery').
attribute('bawol', udomowione, 'tak').
attribute('bawol', rozrod, 'jajorodne').
attribute('bawol', futro, 'nie').
attribute('bawol', klimat, 'cieply').
attribute('bawol', gromada, 'gady').
attribute('bawol', stadne, 'nie').
attribute('bawol', kontynent, 'europa').
continuous_attribute('bawol', ciezar, 952.05).
continuous_attribute('bawol', dlugosc, 281.27).
continuous_attribute('bawol', dlugosc_zycia, 1.87).

animal('bizon').
attribute('bizon', dieta, 'wszystkozerne').
attribute('bizon', srodowisko, 'ladowe').
attribute('bizon', skrzydla, 'nie').
attribute('bizon', nogi, 'cztery').
attribute('bizon', udomowione, 'nie').
attribute('bizon', rozrod, 'jajorodne').
attribute('bizon', futro, 'nie').
attribute('bizon', klimat, 'chlodny').
attribute('bizon', gromada, 'plazy').
attribute('bizon', stadne, 'nie').
attribute('bizon', kontynent, 'antarktyda').
continuous_attribute('bizon', ciezar, 1313.28).
continuous_attribute('bizon', dlugosc, 550.99).
continuous_attribute('bizon', dlugosc_zycia, 20.58).

animal('los').
attribute('los', dieta, 'roslinozerne').
attribute('los', srodowisko, 'powietrzne').
attribute('los', skrzydla, 'nie').
attribute('los', nogi, 'cztery').
attribute('los', udomowione, 'nie').
attribute('los', rozrod, 'jajorodne').
attribute('los', futro, 'nie').
attribute('los', klimat, 'umiarkowany').
attribute('los', gromada, 'plazy').
attribute('los', stadne, 'tak').
attribute('los', kontynent, 'ameryka_poludniowa').
continuous_attribute('los', ciezar, 1434.16).
continuous_attribute('los', dlugosc, 354.44).
continuous_attribute('los', dlugosc_zycia, 13.26).

animal('jelen').
attribute('jelen', dieta, 'wszystkozerne').
attribute('jelen', srodowisko, 'powietrzne').
attribute('jelen', skrzydla, 'tak').
attribute('jelen', nogi, 'dwa').
attribute('jelen', udomowione, 'nie').
attribute('jelen', rozrod, 'jajorodne').
attribute('jelen', futro, 'nie').
attribute('jelen', klimat, 'umiarkowany').
attribute('jelen', gromada, 'ptaki').
attribute('jelen', stadne, 'nie').
attribute('jelen', kontynent, 'ameryka_poludniowa').
continuous_attribute('jelen', ciezar, 318.72).
continuous_attribute('jelen', dlugosc, 82.82).
continuous_attribute('jelen', dlugosc_zycia, 21.98).

animal('sarna').
attribute('sarna', dieta, 'miesozerne').
attribute('sarna', srodowisko, 'ladowe').
attribute('sarna', skrzydla, 'nie').
attribute('sarna', nogi, 'cztery').
attribute('sarna', udomowione, 'nie').
attribute('sarna', rozrod, 'jajorodne').
attribute('sarna', futro, 'nie').
attribute('sarna', klimat, 'umiarkowany').
attribute('sarna', gromada, 'gady').
attribute('sarna', stadne, 'nie').
attribute('sarna', kontynent, 'azja').
continuous_attribute('sarna', ciezar, 594.98).
continuous_attribute('sarna', dlugosc, 286.17).
continuous_attribute('sarna', dlugosc_zycia, 6.94).

animal('dzik').
attribute('dzik', dieta, 'roslinozerne').
attribute('dzik', srodowisko, 'wodne').
attribute('dzik', skrzydla, 'nie').
attribute('dzik', nogi, 'cztery').
attribute('dzik', udomowione, 'tak').
attribute('dzik', rozrod, 'jajorodne').
attribute('dzik', futro, 'nie').
attribute('dzik', klimat, 'umiarkowany').
attribute('dzik', gromada, 'plazy').
attribute('dzik', stadne, 'tak').
attribute('dzik', kontynent, 'australia').
continuous_attribute('dzik', ciezar, 1161.52).
continuous_attribute('dzik', dlugosc, 354.82).
continuous_attribute('dzik', dlugosc_zycia, 21.36).

animal('hipopotam_karlowaty').
attribute('hipopotam_karlowaty', dieta, 'wszystkozerne').
attribute('hipopotam_karlowaty', srodowisko, 'wodne').
attribute('hipopotam_karlowaty', skrzydla, 'nie').
attribute('hipopotam_karlowaty', nogi, 'brak').
attribute('hipopotam_karlowaty', udomowione, 'nie').
attribute('hipopotam_karlowaty', rozrod, 'jajorodne').
attribute('hipopotam_karlowaty', futro, 'nie').
attribute('hipopotam_karlowaty', klimat, 'chlodny').
attribute('hipopotam_karlowaty', gromada, 'ryby').
attribute('hipopotam_karlowaty', stadne, 'tak').
attribute('hipopotam_karlowaty', kontynent, 'australia').
continuous_attribute('hipopotam_karlowaty', ciezar, 252.55).
continuous_attribute('hipopotam_karlowaty', dlugosc, 380.66).
continuous_attribute('hipopotam_karlowaty', dlugosc_zycia, 36.5).

animal('tapir').
attribute('tapir', dieta, 'miesozerne').
attribute('tapir', srodowisko, 'powietrzne').
attribute('tapir', skrzydla, 'nie').
attribute('tapir', nogi, 'cztery').
attribute('tapir', udomowione, 'tak').
attribute('tapir', rozrod, 'jajorodne').
attribute('tapir', futro, 'nie').
attribute('tapir', klimat, 'umiarkowany').
attribute('tapir', gromada, 'gady').
attribute('tapir', stadne, 'tak').
attribute('tapir', kontynent, 'europa').
continuous_attribute('tapir', ciezar, 1215.82).
continuous_attribute('tapir', dlugosc, 428.39).
continuous_attribute('tapir', dlugosc_zycia, 4.76).

animal('lama').
attribute('lama', dieta, 'miesozerne').
attribute('lama', srodowisko, 'wodne').
attribute('lama', skrzydla, 'nie').
attribute('lama', nogi, 'cztery').
attribute('lama', udomowione, 'nie').
attribute('lama', rozrod, 'zyworodne').
attribute('lama', futro, 'tak').
attribute('lama', klimat, 'chlodny').
attribute('lama', gromada, 'ssaki').
attribute('lama', stadne, 'nie').
attribute('lama', kontynent, 'europa').
continuous_attribute('lama', ciezar, 1351.85).
continuous_attribute('lama', dlugosc, 388.66).
continuous_attribute('lama', dlugosc_zycia, 25.86).

animal('alpaka').
attribute('alpaka', dieta, 'roslinozerne').
attribute('alpaka', srodowisko, 'wodne').
attribute('alpaka', skrzydla, 'nie').
attribute('alpaka', nogi, 'brak').
attribute('alpaka', udomowione, 'nie').
attribute('alpaka', rozrod, 'jajorodne').
attribute('alpaka', futro, 'nie').
attribute('alpaka', klimat, 'chlodny').
attribute('alpaka', gromada, 'ryby').
attribute('alpaka', stadne, 'tak').
attribute('alpaka', kontynent, 'europa').
continuous_attribute('alpaka', ciezar, 240.24).
continuous_attribute('alpaka', dlugosc, 373.44).
continuous_attribute('alpaka', dlugosc_zycia, 14.8).

animal('wielblad').
attribute('wielblad', dieta, 'wszystkozerne').
attribute('wielblad', srodowisko, 'powietrzne').
attribute('wielblad', skrzydla, 'nie').
attribute('wielblad', nogi, 'cztery').
attribute('wielblad', udomowione, 'nie').
attribute('wielblad', rozrod, 'zyworodne').
attribute('wielblad', futro, 'tak').
attribute('wielblad', klimat, 'chlodny').
attribute('wielblad', gromada, 'ssaki').
attribute('wielblad', stadne, 'nie').
attribute('wielblad', kontynent, 'ameryka_polnocna').
continuous_attribute('wielblad', ciezar, 262.0).
continuous_attribute('wielblad', dlugosc, 513.05).
continuous_attribute('wielblad', dlugosc_zycia, 11.47).

animal('gepard').
attribute('gepard', dieta, 'miesozerne').
attribute('gepard', srodowisko, 'wodne').
attribute('gepard', skrzydla, 'nie').
attribute('gepard', nogi, 'cztery').
attribute('gepard', udomowione, 'nie').
attribute('gepard', rozrod, 'jajorodne').
attribute('gepard', futro, 'nie').
attribute('gepard', klimat, 'chlodny').
attribute('gepard', gromada, 'inne').
attribute('gepard', stadne, 'nie').
attribute('gepard', kontynent, 'azja').
continuous_attribute('gepard', ciezar, 854.34).
continuous_attribute('gepard', dlugosc, 499.08).
continuous_attribute('gepard', dlugosc_zycia, 12.16).

animal('pantera').
attribute('pantera', dieta, 'roslinozerne').
attribute('pantera', srodowisko, 'ladowe').
attribute('pantera', skrzydla, 'nie').
attribute('pantera', nogi, 'cztery').
attribute('pantera', udomowione, 'nie').
attribute('pantera', rozrod, 'zyworodne').
attribute('pantera', futro, 'tak').
attribute('pantera', klimat, 'chlodny').
attribute('pantera', gromada, 'ssaki').
attribute('pantera', stadne, 'nie').
attribute('pantera', kontynent, 'afryka').
continuous_attribute('pantera', ciezar, 238.42).
continuous_attribute('pantera', dlugosc, 134.65).
continuous_attribute('pantera', dlugosc_zycia, 3.76).

animal('rysc').
attribute('rysc', dieta, 'wszystkozerne').
attribute('rysc', srodowisko, 'powietrzne').
attribute('rysc', skrzydla, 'nie').
attribute('rysc', nogi, 'cztery').
attribute('rysc', udomowione, 'tak').
attribute('rysc', rozrod, 'zyworodne').
attribute('rysc', futro, 'tak').
attribute('rysc', klimat, 'chlodny').
attribute('rysc', gromada, 'ssaki').
attribute('rysc', stadne, 'nie').
attribute('rysc', kontynent, 'ameryka_polnocna').
continuous_attribute('rysc', ciezar, 35.12).
continuous_attribute('rysc', dlugosc, 120.39).
continuous_attribute('rysc', dlugosc_zycia, 3.99).

animal('zumba').
attribute('zumba', dieta, 'wszystkozerne').
attribute('zumba', srodowisko, 'wodne').
attribute('zumba', skrzydla, 'nie').
attribute('zumba', nogi, 'cztery').
attribute('zumba', udomowione, 'tak').
attribute('zumba', rozrod, 'jajorodne').
attribute('zumba', futro, 'nie').
attribute('zumba', klimat, 'umiarkowany').
attribute('zumba', gromada, 'inne').
attribute('zumba', stadne, 'tak').
attribute('zumba', kontynent, 'europa').
continuous_attribute('zumba', ciezar, 513.49).
continuous_attribute('zumba', dlugosc, 344.37).
continuous_attribute('zumba', dlugosc_zycia, 15.4).

animal('mrwkojad').
attribute('mrwkojad', dieta, 'roslinozerne').
attribute('mrwkojad', srodowisko, 'powietrzne').
attribute('mrwkojad', skrzydla, 'tak').
attribute('mrwkojad', nogi, 'dwa').
attribute('mrwkojad', udomowione, 'tak').
attribute('mrwkojad', rozrod, 'jajorodne').
attribute('mrwkojad', futro, 'nie').
attribute('mrwkojad', klimat, 'chlodny').
attribute('mrwkojad', gromada, 'ptaki').
attribute('mrwkojad', stadne, 'nie').
attribute('mrwkojad', kontynent, 'azja').
continuous_attribute('mrwkojad', ciezar, 476.18).
continuous_attribute('mrwkojad', dlugosc, 452.52).
continuous_attribute('mrwkojad', dlugosc_zycia, 19.55).

animal('leniwiec').
attribute('leniwiec', dieta, 'wszystkozerne').
attribute('leniwiec', srodowisko, 'powietrzne').
attribute('leniwiec', skrzydla, 'nie').
attribute('leniwiec', nogi, 'cztery').
attribute('leniwiec', udomowione, 'tak').
attribute('leniwiec', rozrod, 'jajorodne').
attribute('leniwiec', futro, 'nie').
attribute('leniwiec', klimat, 'cieply').
attribute('leniwiec', gromada, 'gady').
attribute('leniwiec', stadne, 'tak').
attribute('leniwiec', kontynent, 'ameryka_polnocna').
continuous_attribute('leniwiec', ciezar, 51.11).
continuous_attribute('leniwiec', dlugosc, 588.64).
continuous_attribute('leniwiec', dlugosc_zycia, 18.66).

animal('pancernik').
attribute('pancernik', dieta, 'miesozerne').
attribute('pancernik', srodowisko, 'powietrzne').
attribute('pancernik', skrzydla, 'nie').
attribute('pancernik', nogi, 'cztery').
attribute('pancernik', udomowione, 'tak').
attribute('pancernik', rozrod, 'zyworodne').
attribute('pancernik', futro, 'tak').
attribute('pancernik', klimat, 'cieply').
attribute('pancernik', gromada, 'ssaki').
attribute('pancernik', stadne, 'tak').
attribute('pancernik', kontynent, 'europa').
continuous_attribute('pancernik', ciezar, 1398.46).
continuous_attribute('pancernik', dlugosc, 237.94).
continuous_attribute('pancernik', dlugosc_zycia, 5.47).

animal('kret').
attribute('kret', dieta, 'wszystkozerne').
attribute('kret', srodowisko, 'powietrzne').
attribute('kret', skrzydla, 'tak').
attribute('kret', nogi, 'dwa').
attribute('kret', udomowione, 'tak').
attribute('kret', rozrod, 'jajorodne').
attribute('kret', futro, 'nie').
attribute('kret', klimat, 'umiarkowany').
attribute('kret', gromada, 'ptaki').
attribute('kret', stadne, 'tak').
attribute('kret', kontynent, 'ameryka_poludniowa').
continuous_attribute('kret', ciezar, 654.37).
continuous_attribute('kret', dlugosc, 354.23).
continuous_attribute('kret', dlugosc_zycia, 29.35).

animal('nietoperz').
attribute('nietoperz', dieta, 'roslinozerne').
attribute('nietoperz', srodowisko, 'wodne').
attribute('nietoperz', skrzydla, 'tak').
attribute('nietoperz', nogi, 'cztery').
attribute('nietoperz', udomowione, 'tak').
attribute('nietoperz', rozrod, 'zyworodne').
attribute('nietoperz', futro, 'tak').
attribute('nietoperz', klimat, 'cieply').
attribute('nietoperz', gromada, 'ssaki').
attribute('nietoperz', stadne, 'nie').
attribute('nietoperz', kontynent, 'afryka').
continuous_attribute('nietoperz', ciezar, 1141.52).
continuous_attribute('nietoperz', dlugosc, 58.81).
continuous_attribute('nietoperz', dlugosc_zycia, 11.92).

animal('pszczola').
attribute('pszczola', dieta, 'roslinozerne').
attribute('pszczola', srodowisko, 'wodne').
attribute('pszczola', skrzydla, 'tak').
attribute('pszczola', nogi, 'brak').
attribute('pszczola', udomowione, 'tak').
attribute('pszczola', rozrod, 'jajorodne').
attribute('pszczola', futro, 'nie').
attribute('pszczola', klimat, 'cieply').
attribute('pszczola', gromada, 'ryby').
attribute('pszczola', stadne, 'tak').
attribute('pszczola', kontynent, 'afryka').
continuous_attribute('pszczola', ciezar, 1472.47).
continuous_attribute('pszczola', dlugosc, 662.99).
continuous_attribute('pszczola', dlugosc_zycia, 24.53).

animal('mucha').
attribute('mucha', dieta, 'miesozerne').
attribute('mucha', srodowisko, 'powietrzne').
attribute('mucha', skrzydla, 'tak').
attribute('mucha', nogi, 'szesc').
attribute('mucha', udomowione, 'nie').
attribute('mucha', rozrod, 'jajorodne').
attribute('mucha', futro, 'nie').
attribute('mucha', klimat, 'umiarkowany').
attribute('mucha', gromada, 'inne').
attribute('mucha', stadne, 'tak').
attribute('mucha', kontynent, 'afryka').
continuous_attribute('mucha', ciezar, 197.15).
continuous_attribute('mucha', dlugosc, 311.11).
continuous_attribute('mucha', dlugosc_zycia, 33.5).

animal('komar').
attribute('komar', dieta, 'wszystkozerne').
attribute('komar', srodowisko, 'powietrzne').
attribute('komar', skrzydla, 'tak').
attribute('komar', nogi, 'szesc').
attribute('komar', udomowione, 'tak').
attribute('komar', rozrod, 'jajorodne').
attribute('komar', futro, 'nie').
attribute('komar', klimat, 'chlodny').
attribute('komar', gromada, 'plazy').
attribute('komar', stadne, 'tak').
attribute('komar', kontynent, 'europa').
continuous_attribute('komar', ciezar, 1012.85).
continuous_attribute('komar', dlugosc, 341.18).
continuous_attribute('komar', dlugosc_zycia, 6.94).

animal('motyl').
attribute('motyl', dieta, 'miesozerne').
attribute('motyl', srodowisko, 'wodne').
attribute('motyl', skrzydla, 'tak').
attribute('motyl', nogi, 'szesc').
attribute('motyl', udomowione, 'tak').
attribute('motyl', rozrod, 'jajorodne').
attribute('motyl', futro, 'nie').
attribute('motyl', klimat, 'umiarkowany').
attribute('motyl', gromada, 'gady').
attribute('motyl', stadne, 'nie').
attribute('motyl', kontynent, 'ameryka_poludniowa').
continuous_attribute('motyl', ciezar, 1383.04).
continuous_attribute('motyl', dlugosc, 435.66).
continuous_attribute('motyl', dlugosc_zycia, 37.26).

animal('cma').
attribute('cma', dieta, 'roslinozerne').
attribute('cma', srodowisko, 'ladowe').
attribute('cma', skrzydla, 'tak').
attribute('cma', nogi, 'szesc').
attribute('cma', udomowione, 'tak').
attribute('cma', rozrod, 'jajorodne').
attribute('cma', futro, 'nie').
attribute('cma', klimat, 'chlodny').
attribute('cma', gromada, 'plazy').
attribute('cma', stadne, 'tak').
attribute('cma', kontynent, 'afryka').
continuous_attribute('cma', ciezar, 1444.69).
continuous_attribute('cma', dlugosc, 480.93).
continuous_attribute('cma', dlugosc_zycia, 6.62).

animal('zapasnik').
attribute('zapasnik', dieta, 'wszystkozerne').
attribute('zapasnik', srodowisko, 'ladowe').
attribute('zapasnik', skrzydla, 'nie').
attribute('zapasnik', nogi, 'szesc').
attribute('zapasnik', udomowione, 'tak').
attribute('zapasnik', rozrod, 'jajorodne').
attribute('zapasnik', futro, 'nie').
attribute('zapasnik', klimat, 'chlodny').
attribute('zapasnik', gromada, 'inne').
attribute('zapasnik', stadne, 'nie').
attribute('zapasnik', kontynent, 'europa').
continuous_attribute('zapasnik', ciezar, 445.46).
continuous_attribute('zapasnik', dlugosc, 20.11).
continuous_attribute('zapasnik', dlugosc_zycia, 31.31).

animal('biedronka').
attribute('biedronka', dieta, 'miesozerne').
attribute('biedronka', srodowisko, 'ladowe').
attribute('biedronka', skrzydla, 'tak').
attribute('biedronka', nogi, 'szesc').
attribute('biedronka', udomowione, 'nie').
attribute('biedronka', rozrod, 'jajorodne').
attribute('biedronka', futro, 'nie').
attribute('biedronka', klimat, 'chlodny').
attribute('biedronka', gromada, 'plazy').
attribute('biedronka', stadne, 'tak').
attribute('biedronka', kontynent, 'ameryka_polnocna').
continuous_attribute('biedronka', ciezar, 1352.2).
continuous_attribute('biedronka', dlugosc, 679.74).
continuous_attribute('biedronka', dlugosc_zycia, 21.17).

animal('stonka').
attribute('stonka', dieta, 'miesozerne').
attribute('stonka', srodowisko, 'wodne').
attribute('stonka', skrzydla, 'nie').
attribute('stonka', nogi, 'szesc').
attribute('stonka', udomowione, 'nie').
attribute('stonka', rozrod, 'jajorodne').
attribute('stonka', futro, 'nie').
attribute('stonka', klimat, 'chlodny').
attribute('stonka', gromada, 'plazy').
attribute('stonka', stadne, 'tak').
attribute('stonka', kontynent, 'ameryka_polnocna').
continuous_attribute('stonka', ciezar, 341.01).
continuous_attribute('stonka', dlugosc, 98.49).
continuous_attribute('stonka', dlugosc_zycia, 39.87).

animal('pajak').
attribute('pajak', dieta, 'wszystkozerne').
attribute('pajak', srodowisko, 'powietrzne').
attribute('pajak', skrzydla, 'nie').
attribute('pajak', nogi, 'osiem').
attribute('pajak', udomowione, 'tak').
attribute('pajak', rozrod, 'jajorodne').
attribute('pajak', futro, 'nie').
attribute('pajak', klimat, 'cieply').
attribute('pajak', gromada, 'plazy').
attribute('pajak', stadne, 'tak').
attribute('pajak', kontynent, 'australia').
continuous_attribute('pajak', ciezar, 452.4).
continuous_attribute('pajak', dlugosc, 109.87).
continuous_attribute('pajak', dlugosc_zycia, 17.44).

animal('skorpion').
attribute('skorpion', dieta, 'roslinozerne').
attribute('skorpion', srodowisko, 'powietrzne').
attribute('skorpion', skrzydla, 'nie').
attribute('skorpion', nogi, 'osiem').
attribute('skorpion', udomowione, 'nie').
attribute('skorpion', rozrod, 'zyworodne').
attribute('skorpion', futro, 'tak').
attribute('skorpion', klimat, 'cieply').
attribute('skorpion', gromada, 'ssaki').
attribute('skorpion', stadne, 'tak').
attribute('skorpion', kontynent, 'afryka').
continuous_attribute('skorpion', ciezar, 1461.44).
continuous_attribute('skorpion', dlugosc, 603.42).
continuous_attribute('skorpion', dlugosc_zycia, 30.59).

