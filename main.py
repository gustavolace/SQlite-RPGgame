from src.helpers.handlePlayer import menu

print( "-" *60 +" \nThe secret of python \n" + "-" *60)
print("1- Continuar jogo\n2- Novo jogo\n")
match_case = input("Selecione uma opção\n")

match(match_case):
    case '1':
        menu()

    case '2':
        pass