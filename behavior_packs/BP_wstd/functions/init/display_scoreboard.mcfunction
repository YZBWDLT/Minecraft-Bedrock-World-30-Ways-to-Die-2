# 初始化中文记分板
scoreboard objectives remove display
scoreboard objectives add display dummy "§c§l30种死法 §62"
scoreboard players set "§l作者 §r§e一只卑微的量筒" display 1
scoreboard players set "§l出品 §r§b极筑工坊" display 2
scoreboard players set "§l版本 §r§cBeta 2.3_03" display 3
scoreboard players set "§l难度 §r§7还未选择" display 4
scoreboard players set "=============" display 5
scoreboard players set "§l     关卡进度" display 6
scoreboard players set "§l§b主线 §r§70§7/30" display 7
scoreboard players set "§l§e限时 §r§70§7/5" display 8
scoreboard players set "§l§c彩§d蛋 §r§70§7/10" display 9
scoreboard players set "§f=============" display 10
scoreboard players set "§l      统计项" display 11
scoreboard players set "§l§2提示 §r§60§7/26" display 12
scoreboard players set "§l§4跳过 §r§60§7/7" display 13
scoreboard players set "§l§3攻略 §r§60§7/26" display 14
scoreboard players set "§l§6进度 §r§70§7/30" display 15

# 初始化英文记分板
scoreboard objectives remove display1
scoreboard objectives add display1 dummy "§c§l30 Ways to Die §62"
scoreboard players set "§lAuthor §r§eYZBWDLT" display1 1
scoreboard players set "§lBy §r§bAB Workshop" display1 2
scoreboard players set "§lVer §r§cBeta 2.3_03" display1 3
scoreboard players set "§lDiff §r§7None" display1 4
scoreboard players set "=============" display1 5
scoreboard players set "§l    Levels" display1 6
scoreboard players set "§l§bML §r§70§7/30" display1 7
scoreboard players set "§l§eTL §r§70§7/5" display1 8
scoreboard players set "§l§cE§dE §r§70§7/10" display1 9
scoreboard players set "§f=============" display1 10
scoreboard players set "§l   Statistics" display1 11
scoreboard players set "§l§2Hint §r§60§7/26" display1 12
scoreboard players set "§l§4Skip §r§60§7/7" display1 13
scoreboard players set "§l§3Stgy §r§60§7/26" display1 14
scoreboard players set "§l§6Advs §r§70§7/30" display1 15

# 按语言显示
execute @e[name=language,scores={settings=0}] ~~~ scoreboard objectives setdisplay sidebar display ascending
execute @e[name=language,scores={settings=1}] ~~~ scoreboard objectives setdisplay sidebar display1 ascending
