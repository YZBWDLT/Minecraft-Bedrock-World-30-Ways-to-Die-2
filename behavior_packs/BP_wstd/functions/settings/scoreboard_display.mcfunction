# 记分板显示设置
scoreboard players add @e[name=scoreboardDisplay] settings -1
scoreboard players set @e[name=scoreboardDisplay,scores={settings=!0..2}] settings 2

# 音效
scoreboard players set @e[name=soundPlayer] active 1

# 对记分板做出更改
## === 设置为2时 ===
execute @e[name=scoreboardDisplay,scores={settings=2}] ~~~ function system/display_scoreboards/show_information
## === 设置为1时 ===
execute @e[name=scoreboardDisplay,scores={settings=1}] ~~~ function system/display_scoreboards/hide_information
## === 设置为0时 ===
execute @e[name=scoreboardDisplay,scores={settings=0}] ~~~ scoreboard objectives setdisplay sidebar

# 提示
execute @e[name=scoreboardDisplay,scores={settings=0}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.scoreboard_display.none"}]}
execute @e[name=scoreboardDisplay,scores={settings=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.scoreboard_display.part"}]}
execute @e[name=scoreboardDisplay,scores={settings=2}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"settings.scoreboard_display.full"}]}
