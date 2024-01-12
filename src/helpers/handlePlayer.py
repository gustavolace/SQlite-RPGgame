from src.helpers.handleFunctions import continue_option, find_char_view, find_char
from src.helpers.handleFight import fight
from src.helpers.handleFormat import format_attack_dict, print_attacks

def continue_game():
        char_id = input(f"\n\nSelecione seu personagem (número :p)\n{continue_option()}\n")
        print( "-" *60 +" \nThe secret of python \n" + "-" *60 + "\n" *10)
        character = find_char_view(char_id)

        if character is not None:
            print(f"Bem vindo de volta {character[1]}!\n")
            return character
        else:
            print("Personagem não encontrado.")
            return None

def menu():
        character_view = continue_game()
        character = find_char(character_view[0])
        
        print(f"Nome- {character[0]}, Classe- {character_view[2]}, Level- {character_view[3]}")
        print("-"*60)

        while True:
            match_case = input("Selecione uma opção:\n1- Ver Habilidades\n2- Ver Atributos\n3- Lutar\n4- Sair\n")

            match(match_case):
                case "1": 
                    print("\n\n")
                    atks = format_attack_dict(character_view[4])
                    print_attacks(atks)

                    input(("Selecione qualque tecla para voltar\n\n"))

                case "2":
                    print("\n\n")
                    print(f"HP- {character[1]}")
                    print(f"Força- {character[2]}")
                    print(f"inteligência- {character[3]}")
                    input(("Selecione qualque tecla para voltar\n\n"))
                    
                case "3":
                    fight(character, character_view[4])
                    break
                case "4":
                    break