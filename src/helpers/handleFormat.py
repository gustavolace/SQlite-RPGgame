def format_attack_dict(attack_string):
    # Divide a string em uma lista de partes
    parts = attack_string.split(',')

    # Inicializa o dicionário de resultado
    result_dict = {}

    # Loop através da lista de partes, pulando de 3 em 3 (para agrupar atkname, damage, type)
    for i in range(0, len(parts), 3):
        atkname = parts[i]
        damage = parts[i + 1]
        attack_type = parts[i + 2]

        # Adiciona as partes ao dicionário de resultado
        result_dict[f"{i//3 + 1}"] = {"atkname": atkname, "damage": damage, "type": attack_type}

    return result_dict

def print_attacks(atk_dict):
    for key, value in atk_dict.items():
        print(f"{key}- {value['atkname']} - {value['damage']}dmg - {value['type']}")
    
def calculate_damage(chosen_attack, character):
    if chosen_attack['type'] == "physical":
        damage = int(chosen_attack['damage']) * int(character[2]) / 10
        print(f"Bravo! O dano foi igual a {damage}")
    elif chosen_attack['type'] == "magical":
        damage = int(chosen_attack['damage']) * int(character[3]) / 10
        print(f"Mágico! O dano foi igual a {damage}")
    else:
        print("Tipo de ataque desconhecido.")

