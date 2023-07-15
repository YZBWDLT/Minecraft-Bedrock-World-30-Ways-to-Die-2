# 当出现超出-20~60的关卡ID时，强制将ID更改到0

execute @e[name=level,scores={backend=!-20..60}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.invalid_level_id","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}
execute @e[name=level,scores={backend=!-20..60}] ~~~ function levels/all_levels/quit_level