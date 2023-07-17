function halls/main_hall/start_level
tp @a -41 9 27 facing -52 9 27

# 对记分板做出更改
## === 更新记分板数据 ===
function system/display_scoreboards/normal_levels
function system/display_scoreboards/time_limited_levels
function system/display_scoreboards/easter_egg_levels
function system/display_scoreboards/hint
function system/display_scoreboards/strategy
function system/display_scoreboards/skip
function system/display_scoreboards/advancement
function system/display_scoreboards/difficulty

## === 设置为2时 ===
execute @e[name=scoreboardDisplay,scores={settings=2}] ~~~ function system/display_scoreboards/show_information
## === 设置为1时 ===
execute @e[name=scoreboardDisplay,scores={settings=1}] ~~~ function system/display_scoreboards/hide_information
## === 设置为0时 ===
execute @e[name=scoreboardDisplay,scores={settings=0}] ~~~ scoreboard objectives setdisplay sidebar

