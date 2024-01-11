create view class_attacks_view
SELECT c_atk.class_name, c_atk.attack_level, GROUP_CONCAT(atk.name || '-' || atk.type, ',') as ataques
FROM class_attacks c_atk
INNER JOIN attacks atk ON c_atk.attack_id = atk.id
GROUP BY c_atk.class_name, c_atk.attack_level
ORDER BY c_atk.class_name ASC, c_atk.attack_level ASC;

create view class_attacks_listview as
SELECT c_atk.class_id, c_atk.class_name, c_atk.attack_level, atk.name as ataques, atk.base_damage
FROM class_attacks c_atk
INNER JOIN attacks atk ON c_atk.attack_id = atk.id
ORDER BY c_atk.class_name ASC, c_atk.attack_level ASC;