# 提示内容
tellraw @a {"rawtext":[{"translate":"chat.strategy.tutorial_level"}]}
clear @a wstd:strategy
scoreboard players set @e[name=timeline] time 900
scoreboard players set @e[name=timeline] active 1