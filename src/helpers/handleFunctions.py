from src.services.db import start_server

db = start_server()

def select_char():
    db.execute("SELECT * FROM characters")
    print(db.fetchall())
    db.connection.commit()