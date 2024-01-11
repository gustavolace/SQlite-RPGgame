-- Inserir dados na tabela attacks
INSERT INTO attacks (name, type, base_damage) VALUES
('Sword Slash', 'physical', 20),
('Fireball', 'magical', 30),
('Ice Shard', 'magical', 25),
('Power Punch', 'physical', 35),
('Lightning Strike', 'magical', 40),
('Arrow Shot', 'physical', 15),
('Earthquake', 'magical', 45),
('Dagger Stab', 'physical', 18),
('Thunderbolt', 'magical', 50),
('Hammer Smash', 'physical', 40);

-- Inserir dados na tabela enemies
INSERT INTO enemies (name, hp) VALUES
('Goblin', 30),
('Skeleton Warrior', 40),
('Fire Elemental', 50),
('Orc Warrior', 35),
('Ice Golem', 60),
('Bandit Leader', 45),
('Earth Elemental', 55),
('Assassin', 38),
('Thunder Spirit', 48),
('Cave Troll', 70);

-- Inserir dados na tabela enemy_attacks
INSERT INTO enemy_attacks (enemy_id, attack_id) VALUES
(1, 2), -- Goblin has Fireball
(2, 1), -- Skeleton Warrior has Sword Slash
(2, 6), -- Skeleton Warrior has Arrow Shot
(3, 5), -- Fire Elemental has Lightning Strike
(4, 4), -- Orc Warrior has Power Punch
(5, 3), -- Ice Golem has Ice Shard
(6, 6), -- Bandit Leader has Arrow Shot
(6, 1), -- Bandit Leader has Sword Slash
(7, 7), -- Earth Elemental has Earthquake
(8, 8), -- Assassin has Dagger Stab
(9, 9), -- Thunder Spirit has Thunderbolt
(10, 10); -- Cave Troll has Hammer Smash

-- Inserir dados na tabela class_attacks
INSERT INTO class_attacks (class_id, class_name, attack_id, attack_level) VALUES
(1, 'Warrior', 1, 3), -- Warrior unlocks Sword Slash at level 3
(2, 'Mage', 2, 2), -- Mage unlocks Fireball at level 2
(3, 'Archer', 6, 5), -- Archer unlocks Arrow Shot at level 5
(1, 'Warrior', 9, 9), -- Warrior unlocks Thunderbolt at level 9
(2, 'Mage', 7, 6), -- Mage unlocks Earthquake at level 6
(3, 'Archer', 8, 5), -- Archer unlocks Dagger Stab at level 5
(1, 'Warrior', 3, 4), -- Warrior unlocks Ice Shard at level 4
(2, 'Mage', 10, 7), -- Mage unlocks Hammer Smash at level 7
(3, 'Archer', 1, 3), -- Archer unlocks Sword Slash at level 3
(1, 'Warrior', 5, 5), -- Warrior unlocks Lightning Strike at level 5
(2, 'Mage', 6, 9), -- Mage unlocks Arrow Shot at level 9
(3, 'Archer', 4, 8), -- Archer unlocks Power Punch at level 8
(1, 'Warrior', 2, 2); -- Warrior unlocks Fireball at level 2

-- Inserir dados na tabela characters
INSERT INTO characters (name, hp, class_id, level, strength, intelligence) VALUES
('Hero1', 100, 1, 5, 30, 10), -- Warrior
('Hero2', 80, 2, 3, 15, 25), -- Mage
('Hero3', 90, 3, 4, 20, 15); -- Archer

