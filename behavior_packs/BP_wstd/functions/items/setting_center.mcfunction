execute @e[name=level,scores={backend=!-20..0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.not_hall_levels"}]}
execute @e[name=level,scores={backend=!-20..0}] ~~~ clear @a wstd:setting_center
execute @e[name=level,scores={backend=-20..0}] ~~~ function halls/setting_center/start_level