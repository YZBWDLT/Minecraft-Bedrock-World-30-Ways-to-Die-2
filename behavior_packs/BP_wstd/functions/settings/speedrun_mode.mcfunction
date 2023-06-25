# 解除或锁定 游戏规则限制
scoreboard players add @e[name=speedrunMode] settings 1
scoreboard players set @e[name=speedrunMode,scores={settings=!0..1}] settings 0

execute @e[name=speedrunMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"settings.speedrun_mode.disabled"}]}
execute @e[name=speedrunMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"settings.speedrun_mode.enabled"}]}

scoreboard players set @e[name=soundPlayer] active 11

# 速通模式锁定困难
execute @e[name=speedrunMode,scores={settings=1}] ~~~ function system/display_scoreboards/reset_difficulty
execute @e[name=speedrunMode,scores={settings=1}] ~~~ scoreboard players set "§l难度 §r§c困难" display 4
execute @e[name=speedrunMode,scores={settings=1}] ~~~ scoreboard players set @e[name=hintEnabled] settings 0
execute @e[name=speedrunMode,scores={settings=1}] ~~~ scoreboard players set @e[name=strategyEnabled] settings 0
execute @e[name=speedrunMode,scores={settings=1}] ~~~ scoreboard players set @e[name=skipEnabled] settings 0
execute @e[name=speedrunMode,scores={settings=1}] ~~~ scoreboard players set @e[name=level30Dialogue] settings 0

function system/music/play_maingame