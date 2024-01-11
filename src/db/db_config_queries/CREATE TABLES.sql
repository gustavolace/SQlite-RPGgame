CREATE TABLE characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    hp INT NOT NULL,
    class_id INT NOT NULL,
    level INT NOT NULL,
    strength INT NOT NULL,
    intelligence INT NOT NULL,
    FOREIGN KEY (class_id) REFERENCES class_attacks(class_id)
);

CREATE TABLE enemies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    hp INT NOT NULL
);

CREATE TABLE attacks (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    type TEXT CHECK(type IN ('physical', 'magical')) NOT NULL,
    base_damage INT NOT NULL
);

CREATE TABLE enemy_attacks (
    enemy_id INT,
    attack_id INT,
    PRIMARY KEY (enemy_id, attack_id),
    FOREIGN KEY (enemy_id) REFERENCES enemies(id),
    FOREIGN KEY (attack_id) REFERENCES attacks(id)
);

CREATE TABLE class_attacks (
    class_id INT,
   class_name varchar(255),
    attack_id INT,
  	attack_level int,
   
    PRIMARY KEY (class_id, attack_id),
    FOREIGN KEY (attack_id) REFERENCES attacks(id)
);
