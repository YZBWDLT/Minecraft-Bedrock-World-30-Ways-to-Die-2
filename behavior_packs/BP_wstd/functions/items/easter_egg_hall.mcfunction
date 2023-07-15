execute @e[name=level,scores={backend=!-20..0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.not_hall_levels"}]}
execute @e[name=level,scores={backend=!-20..0}] ~~~ clear @a wstd:easter_egg_hall
execute @e[name=level,scores={backend=-20..0}] ~~~ function halls/easter_egg_hall/start_level