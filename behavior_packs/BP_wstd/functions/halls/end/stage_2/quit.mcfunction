# ===== 退出关卡 =====

# --- 通用 ---

## 标记玩家已完成主线
scoreboard players set progress.mapStage record 2

## 回到大厅
function halls/hub/main/start_general

## 传送玩家
tp @a -41 9 27 facing -52 9 27

# --- 特殊内容 ---

## 更新记分板 | 这个模块是针对网易的，不知道网易抽什么风，居然连记分板的假名都难以正常显示
function lib/scoreboard/mainline_levels
function lib/scoreboard/time_limited_levels
function lib/scoreboard/easter_egg_levels
function lib/scoreboard/hint
function lib/scoreboard/strategy
function lib/scoreboard/skip
function lib/scoreboard/advancement
function lib/scoreboard/difficulty

## 显示记分板
execute if score scoreboardDisplay settings matches 2 run function lib/modify_data/scoreboard_show
execute if score scoreboardDisplay settings matches 1 run function lib/modify_data/scoreboard_hide
execute if score scoreboardDisplay settings matches 0 run scoreboard objectives setdisplay sidebar

## 停用特殊分值
scoreboard players reset endStage2.fireworkTimer time
scoreboard players reset endStage2.fireworkLauncher data

## 重新放一次logo | 可能会受到timeline中的destroy模式的填充影响，导致旗帜显示出错
structure load system:logo_completed 47 6 21
