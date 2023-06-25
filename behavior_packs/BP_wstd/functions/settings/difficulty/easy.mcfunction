# 速通模式下阻止执行
execute @e[name=speedrunMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.change_difficulty.in_speedrun_mode"}]}

# 重置记分板显示
execute @e[name=speedrunMode,scores={settings=0}] ~~~ function system/display_scoreboards/reset_difficulty
execute @e[name=speedrunMode,scores={settings=0}] ~~~ scoreboard players set "§l难度 §r§a简单" display 4

# 设置难度后台设定
execute @e[name=speedrunMode,scores={settings=0}] ~~~ scoreboard players set @e[name=hintEnabled] settings 1
execute @e[name=speedrunMode,scores={settings=0}] ~~~ scoreboard players set @e[name=strategyEnabled] settings 0
execute @e[name=speedrunMode,scores={settings=0}] ~~~ scoreboard players set @e[name=skipEnabled] settings 1

# tellraw与音效
execute @e[name=speedrunMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"settings.difficulty.easy"}]}
execute @e[name=speedrunMode,scores={settings=0}] ~~~ scoreboard players set @e[name=soundPlayer] active 11