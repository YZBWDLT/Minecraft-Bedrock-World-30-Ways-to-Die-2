execute @e[name=level,scores={backend=!-20..0}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.not_hall_levels"}]}
execute @e[name=level,scores={backend=!-20..0}] ~~~ clear @a wstd:stats_center
execute @e[name=level,scores={backend=-20..0}] ~~~ function halls/stats_center/start_level