# 重置地图

gamemode adventure @a
clear @a
tp @a 4 8 7
scoreboard players set @a oplevel 0
scoreboard players set @e[name=level] backend -20
kill @e[type=wstd:text_display]
kill @e[type=wstd:creator]

gamerule sendcommandfeedback false
scoreboard objectives setdisplay sidebar

music stop 1
stopsound @a

## 重置地图数据
function init/structures
function init/data_init