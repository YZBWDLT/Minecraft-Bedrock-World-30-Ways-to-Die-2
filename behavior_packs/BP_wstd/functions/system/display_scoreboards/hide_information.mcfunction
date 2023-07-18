scoreboard players reset "§l作者 §r§e一只卑微的量筒" display
scoreboard players reset "§l出品 §r§b极筑工坊" display
scoreboard players reset "§l版本 §r§b2.3" display
scoreboard players reset "=============" display
scoreboard players reset "§l     关卡进度" display
scoreboard players reset "§f=============" display
scoreboard players reset "§l      统计项" display

scoreboard players reset "§lAuthor §r§eYZBWDLT" display1
scoreboard players reset "§lBy §r§bAB Workshop" display1
scoreboard players reset "§lVer §r§b2.3" display1
scoreboard players reset "=============" display1
scoreboard players reset "§l    Levels" display1
scoreboard players reset "§f=============" display1
scoreboard players reset "§l   Statistics" display1

execute @e[name=language,scores={settings=0}] ~~~ scoreboard objectives setdisplay sidebar display ascending
execute @e[name=language,scores={settings=1}] ~~~ scoreboard objectives setdisplay sidebar display1 ascending
