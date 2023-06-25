# 提示内容
tellraw @a {"rawtext":[{"translate":"hint.tutorial_level"}]}
clear @a wstd:hint
scoreboard players set @e[name=timeline] time 700
scoreboard players set @e[name=timeline] active 1