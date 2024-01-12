from src.services.db import start_server

db = start_server()

def continue_option():
    db.execute("SELECT id, name, level FROM characters")
    characters = db.fetchall()
    db.connection.commit()

    options = []
    for id, nome_heroi, valor in characters:
        options.append(f"{id}: Nome - {nome_heroi}, Level - {valor}")

    return "\n".join(options)

def find_char_view(id):
    db.execute(f"SELECT * from characters_atk_view_concat where id = {id}")
    character = db.fetchone()
    db.connection.commit()
    return character

def find_char(id):
    db.execute(f"SELECT name, hp, strength, intelligence from characters where id = {id}")
    character = db.fetchone()
    db.connection.commit()
    return character

def find_enemies():
    db.execute("SELECT * from enemy_attacks_view")
    enemies = db.fetchall()
    db.connection.commit()
    return enemies
    