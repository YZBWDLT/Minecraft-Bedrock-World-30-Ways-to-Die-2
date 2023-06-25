# 切换地图时间
scoreboard players add @e[name=mapTime] settings 1
scoreboard players set @e[name=mapTime,scores={settings=!0..3}] settings 0

# 音效
scoreboard players set @e[name=soundPlayer] active 1

# 提示
execute @e[name=mapTime,scores={settings=0}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.map_time.always_day"}]}
execute @e[name=mapTime,scores={settings=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.map_time.night_in_firework_tutorial"}]}
execute @e[name=mapTime,scores={settings=2}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.map_time.always_night"}]}
execute @e[name=mapTime,scores={settings=3}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.map_time.time_flows"}]}