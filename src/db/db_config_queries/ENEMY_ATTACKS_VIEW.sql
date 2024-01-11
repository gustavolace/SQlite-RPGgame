SELECT * from enemies;
SELECT * from enemy_attacks;

CREATE view enemy_attacks_view as
SELECT e.name, GROUP_CONCAT(atk.name || ',' || atk.base_damage) as valores 
FROM enemies as e 
INNER JOIN enemy_attacks as et ON et.enemy_id = e.id 
INNER JOIN attacks as atk ON et.attack_id = atk.id
GROUP BY e.name;

SELECT * from enemy_attacks_view

