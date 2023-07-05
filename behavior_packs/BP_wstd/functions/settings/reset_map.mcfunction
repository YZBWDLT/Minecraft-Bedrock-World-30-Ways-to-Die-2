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

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§6更改语言" 24 10.2 30
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§6Change language" 24 9.9 30