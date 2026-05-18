import random

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

# Ensure we have exactly 100
animals = animals[:100]

diety = ["roslinozerne", "wszystkozerne", "miesozerne"]
srodowiska = ["ladowe", "wodne", "powietrzne"]
skrzydla_opts = ["tak", "nie"]
nogi = ["dwa", "cztery", "szesc", "osiem", "wiecej", "brak"]
udomowione_opts = ["tak", "nie"]
rozrod = ["zyworodne", "jajorodne", "jajozyworodne"]
futro_opts = ["tak", "nie"]
klimaty = ["chlodny", "umiarkowany", "cieply"]
gromady = ["plazy", "gady", "ryby", "ptaki", "ssaki", "inne"]
stadne_opts = ["tak", "nie"]
kontynenty = ["azja", "afryka", "ameryka_polnocna", "ameryka_poludniowa", "europa", "antarktyda", "australia"]

def gen_animal_data(name):
    # Determine basic logic
    gromada = random.choice(gromady)
    
    skrzydla = "nie"
    if gromada == "ptaki":
        skrzydla = "tak"
    elif name in ["nietoperz", "pszczola", "mucha", "komar", "motyl", "cma", "biedronka"]:
        skrzydla = "tak"
        
    f = "nie"
    if gromada == "ssaki":
        f = "tak"
        
    srod = random.choice(srodowiska)
    if gromada == "ryby":
        srod = "wodne"
    if skrzydla == "tak" and gromada == "ptaki":
        srod = "powietrzne"
        
    n = "cztery"
    if gromada == "ptaki" or name in ["czlowiek", "kangur", "strus", "emu", "kiwi"]:
        n = "dwa"
    elif gromada == "ryby" or name in ["waz_boa", "kobra", "zmija"]:
        n = "brak"
    elif name in ["pszczola", "mucha", "komar", "motyl", "cma", "zapasnik", "biedronka", "stonka"]:
        n = "szesc"
    elif name in ["pajak", "skorpion"]:
        n = "osiem"
        
    rozr = "jajorodne"
    if gromada == "ssaki" and name not in ["dziobak", "kolczatka"]:
        rozr = "zyworodne"
    
    # fuzzy parameters
    ciezar = random.uniform(0.1, 1500)
    dlugosc = random.uniform(5, 700)
    zycie = random.uniform(1, 40)
        
    return {
        "name": name,
        "dieta": random.choice(diety),
        "srodowisko": srod,
        "skrzydla": skrzydla,
        "nogi": n,
        "udomowione": random.choice(udomowione_opts),
        "rozrod": rozr,
        "futro": f,
        "klimat": random.choice(klimaty),
        "gromada": gromada,
        "stadne": random.choice(stadne_opts),
        "kontynent": random.choice(kontynenty),
        "ciezar": round(ciezar, 2),
        "dlugosc": round(dlugosc, 2),
        "zycie": round(zycie, 2)
    }

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
