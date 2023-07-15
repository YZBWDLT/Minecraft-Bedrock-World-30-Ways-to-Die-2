scoreboard players set "§l作者 §r§e一只卑微的量筒" display 1
scoreboard players set "§l出品 §r§b极筑工坊" display 2
scoreboard players set "§l版本 §r§c2.3 - Pre 2" display 3
scoreboard players set "=============" display 5
scoreboard players set "§l     关卡进度" display 6
scoreboard players set "§f=============" display 10
scoreboard players set "§l      统计项" display 11

scoreboard players set "§lAuthor §r§eYZBWDLT" display1 1
scoreboard players set "§lBy §r§bAB Workshop" display1 2
scoreboard players set "§lVer §r§c2.3 - Pre 2" display1 3
scoreboard players set "=============" display1 5
scoreboard players set "§l    Levels" display1 6
scoreboard players set "§f=============" display1 10
scoreboard players set "§l   Statistics" display1 11

execute @e[name=language,scores={settings=0}] ~~~ scoreboard objectives setdisplay sidebar display ascending
execute @e[name=language,scores={settings=1}] ~~~ scoreboard objectives setdisplay sidebar display1 ascending