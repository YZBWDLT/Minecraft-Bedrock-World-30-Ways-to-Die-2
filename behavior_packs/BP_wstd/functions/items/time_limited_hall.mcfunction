execute @e[name=level,scores={backend=!-20..0}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.not_hall_levels"}]}
execute @e[name=level,scores={backend=!-20..0}] ~~~ clear @a wstd:time_limited_hall
execute @e[name=level,scores={backend=-20..0}] ~~~ function halls/time_limited_hall/start_level