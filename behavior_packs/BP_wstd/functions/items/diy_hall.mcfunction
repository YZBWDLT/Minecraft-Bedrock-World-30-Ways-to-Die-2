execute @e[name=level,scores={backend=!-20..0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.not_hall_levels"}]}
execute @e[name=level,scores={backend=!-20..0}] ~~~ clear @a wstd:diy_hall
execute @e[name=level,scores={backend=-20..0}] ~~~ function halls/diy_hall/start_level