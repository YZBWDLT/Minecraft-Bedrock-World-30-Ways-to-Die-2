execute @e[name=level,scores={backend=!-20..0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.not_hall_levels"}]}
execute @e[name=level,scores={backend=!-20..0}] ~~~ clear @a wstd:firework_tutorial
execute @e[name=level,scores={backend=-20..0}] ~~~ function halls/firework_tutorial/start_level