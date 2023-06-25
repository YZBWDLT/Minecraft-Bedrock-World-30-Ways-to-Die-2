# 切换地图时间
scoreboard players add @e[name=levelCompleteDelay] settings 1
scoreboard players set @e[name=levelCompleteDelay,scores={settings=!-5..5}] settings -5

# 音效
scoreboard players set @e[name=soundPlayer] active 1

# 提示
execute @e[name=levelCompleteDelay,scores={settings=0}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.none"}]}
execute @e[name=levelCompleteDelay,scores={settings=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.specific_levels.5ticks"}]}
execute @e[name=levelCompleteDelay,scores={settings=2}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.specific_levels.10ticks"}]}
execute @e[name=levelCompleteDelay,scores={settings=3}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.specific_levels.15ticks"}]}
execute @e[name=levelCompleteDelay,scores={settings=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.specific_levels.20ticks"}]}
execute @e[name=levelCompleteDelay,scores={settings=5}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.specific_levels.25ticks"}]}
execute @e[name=levelCompleteDelay,scores={settings=-1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.all_levels.5ticks"}]}
execute @e[name=levelCompleteDelay,scores={settings=-2}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.all_levels.10ticks"}]}
execute @e[name=levelCompleteDelay,scores={settings=-3}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.all_levels.15ticks"}]}
execute @e[name=levelCompleteDelay,scores={settings=-4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.all_levels.20ticks"}]}
execute @e[name=levelCompleteDelay,scores={settings=-5}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.level_complete_delay.all_levels.25ticks"}]}
