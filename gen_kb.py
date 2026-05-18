import csv

animals = [
    "lew", "tygrys", "niedzwiedz", "wilk", "lis", "slon", "zyrafa", "zebra", "hipopotam", "nosorozec",
    "krokodyl", "aligator", "waz_boa", "kobra", "zmija", "zolw_ladowy", "zolw_morski", "jaszczurka", "kameleon", "legwan",
    "orzel", "sokol", "jastrzab", "sowa", "wrobel", "goleb", "kruk", "papuga", "pingwin", "struc",
    "rekin", "delfin", "wieloryb", "orka", "losos", "karp", "szczupak", "mors", "foka", "wydra",
    "zaba", "ropucha", "salamandra", "traszka", "kumak", "krowa", "kon", "swinia", "owca", "koza",
    "pies", "kot", "krolik", "chomik", "swinka_morska", "mysz", "szczur", "wiewiorka", "bobr", "jeoz",
    "kangur", "koala", "dziobak", "kolczatka", "wombat", "emu", "kiwi", "diabel_tasmanski", "dingo", "kazuar",
    "bawol", "bizon", "los", "jelen", "sarna", "dzik", "hipopotam_karlowaty", "tapir", "lama", "alpaka",
    "wielblad", "gepard", "pantera", "rysc", "zumba", "mrwkojad", "leniwiec", "pancernik", "kret", "nietoperz",
    "pszczola", "mucha", "komar", "motyl", "cma", "zapasnik", "biedronka", "stonka", "pajak", "skorpion"
]

animals = {}

with open('zwierzeta_atrybuty.csv', mode='r', encoding='utf-8') as file:
    reader = csv.DictReader(file)
    for row in reader:
        # Pobieramy nazwę zwierzęcia jako klucz główny
        nazwa_zwierzecia = row.pop('Zwierze') 
        # Reszta kolumn staje się wartością (podwójnym słownikiem)
        animals[nazwa_zwierzecia] = row
        animals[nazwa_zwierzecia]['name'] = nazwa_zwierzecia

def gen_animal_data(name):
    return animals[name]

prolog_code = "% Baza wiedzy (100 gatunków)\n\n"

for a in animals:
    data = gen_animal_data(a)
    prolog_code += f"animal('{data['name']}').\n"
    prolog_code += f"attribute('{data['name']}', dieta, '{data['dieta']}').\n"
    prolog_code += f"attribute('{data['name']}', srodowisko, '{data['srodowisko']}').\n"
    prolog_code += f"attribute('{data['name']}', skrzydla, '{data['skrzydla']}').\n"
    prolog_code += f"attribute('{data['name']}', nogi, '{data['nogi']}').\n"
    prolog_code += f"attribute('{data['name']}', udomowione, '{data['udomowione']}').\n"
    prolog_code += f"attribute('{data['name']}', rozrod, '{data['rozrod']}').\n"
    prolog_code += f"attribute('{data['name']}', futro, '{data['futro']}').\n"
    prolog_code += f"attribute('{data['name']}', klimat, '{data['klimat']}').\n"
    prolog_code += f"attribute('{data['name']}', gromada, '{data['gromada']}').\n"
    prolog_code += f"attribute('{data['name']}', stadne, '{data['stadne']}').\n"
    prolog_code += f"attribute('{data['name']}', kontynent, '{data['kontynent']}').\n"
    
    # Continuous attributes (for fuzzy)
    prolog_code += f"continuous_attribute('{data['name']}', ciezar, {data['ciezar']}).\n"
    prolog_code += f"continuous_attribute('{data['name']}', dlugosc, {data['dlugosc']}).\n"
    prolog_code += f"continuous_attribute('{data['name']}', dlugosc_zycia, {data['zycie']}).\n"
    prolog_code += "\n"

with open("src/kb.pl", "w") as f:
    f.write(prolog_code)
