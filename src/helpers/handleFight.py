import random
from src.helpers.handleFunctions import find_enemies
from src.helpers.handleFormat import print_attacks, format_attack_dict, calculate_damage

def fight_encounter():
    enemies = find_enemies()
    selected = random.choice(enemies)

    enemy_dict = {
        'name' : selected[0],
        'hp' : selected[1],
        'attacks' : []
    }

    attack_parts = selected[2].split(',')
    for i in range(0, len(attack_parts), 2):
        attack_name = attack_parts[i]
        attack_damage = int(attack_parts[i + 1])  # Convertendo para int para garantir que seja um número
        enemy_dict['attacks'].append({'name': attack_name, 'damage': attack_damage})

    return enemy_dict

def fight(character, atks): 
    enemy_dict = fight_encounter()
    print("\n")
    print(f"{enemy_dict['name']} apareceu!\n")
    print("-" *60)
    print(f"Seu HP {character[1]}/{character[1]}")

    action = input("1- Habilidades\n2- Concentrar\n3- Defender\n")

    match(action):
        case "1":

            while(True):
                
                character_life = character[1]
                enemy_life = enemy_dict['hp']
                atk_list = format_attack_dict(atks)
                print("\n\n")
                print_attacks(atk_list)
                print("\nPrecione qualquer tecla para voltar")
                chosen_attack_num = input("Selecione um ataque\n")

                if (chosen_attack_num in atk_list):
                    chosen_attack = atk_list[chosen_attack_num]
                    print(f"Você escolheu o ataque: {chosen_attack['atkname']} - {chosen_attack['damage']}dmg - {chosen_attack['type']}")
                    total_damege = calculate_damage(chosen_attack, character)  

                    enemy_life -= total_damege

                if enemy_life <= 0:
                    print(f"\nVocê derrotou {enemy_dict['name']}!\n")
                    break

                print(f"\nAgora é a vez de {enemy_dict['name']}!\n")
                print("-" *60)
                print(f"seu HP {character_life}/{character[1]}")
                print(f"HP inimigo {enemy_life}/{enemy_dict['hp']}")
                print("\n\n")
                enemy_damage = random.choice(enemy_dict['attacks'])['damage']
                character_life -= enemy_damage
                print(f"{enemy_dict['name']} usou {enemy_dict['attacks'][0]['name']} e causou {enemy_damage} de dano!")

                if character_life <= 0:
                    print("\nVocê morreu!\n")
                    break

        case "2":
            pass
        case "3":
            pass