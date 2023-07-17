# 速通模式下阻止执行
execute @e[name=speedrunMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.error.change_difficulty.in_speedrun_mode"}]}

# 设置难度后台设定
execute @e[name=speedrunMode,scores={settings=0}] ~~~ scoreboard players add @e[name=skipEnabled] settings 1
execute @e[name=speedrunMode,scores={settings=0}] ~~~ scoreboard players set @e[name=skipEnabled,scores={settings=2}] settings 0

# 提示
execute @e[name=speedrunMode,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.difficulty.skip.enabled"}]}
execute @e[name=speedrunMode,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.settings.difficulty.skip.disabled"}]}
execute @e[name=speedrunMode,scores={settings=0}] ~~~ scoreboard players set @e[name=soundPlayer] active 11

# 重置记分板显示
execute @e[name=speedrunMode,scores={settings=0}] ~~~ function system/display_scoreboards/difficulty

# 当符合以下情况时，改回到默认显示状态
execute @e[name=speedrunMode,scores={settings=0}] ~~~ execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=1}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ function settings/difficulty/very_easy
execute @e[name=speedrunMode,scores={settings=0}] ~~~ execute @e[name=hintEnabled,scores={settings=1}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ function settings/difficulty/easy
execute @e[name=speedrunMode,scores={settings=0}] ~~~ execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ function settings/difficulty/normal
execute @e[name=speedrunMode,scores={settings=0}] ~~~ execute @e[name=hintEnabled,scores={settings=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=0}] ~~~ execute @e[name=skipEnabled,scores={settings=0}] ~~~ function settings/difficulty/hard