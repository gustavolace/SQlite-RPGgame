create view character_atk_view_perline as
SELECT ch.name, lvw.class_name, ch.level, lvw.attack_level, lvw.ataques
FROM characters ch
INNER JOIN class_attacks_listview lvw ON lvw.class_id = ch.class_id
and ch.level >= lvw.attack_level
order by name
;

CREATE view characters_atk_view_concat as
SELECT ch.id, ch.name, lvw.class_name, ch.level, GROUP_CONCAT(lvw.ataques || "," || lvw.base_damage) as atks
FROM characters ch
INNER JOIN class_attacks_listview lvw ON lvw.class_id = ch.class_id
where ch.level >= lvw.attack_level
group by ch.name, lvw.class_name, ch.level
order by name
;
