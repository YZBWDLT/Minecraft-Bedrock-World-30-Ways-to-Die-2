# ===== 记分板显示设置 =====

# --- 状态调整 ---

scoreboard players remove scoreboardDisplay settings 1
execute if score scoreboardDisplay settings matches !0..2 run scoreboard players set scoreboardDisplay settings 2

# --- 提示 ---

## 聊天栏
execute if score scoreboardDisplay settings matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.scoreboard_display.none"}]}
execute if score scoreboardDisplay settings matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.scoreboard_display.part"}]}
execute if score scoreboardDisplay settings matches 2 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.scoreboard_display.full"}]}

## 音效
function lib/modify_states/sound/random_orb_1

## 更新记分板数据
function lib/scoreboard/mainline_levels
function lib/scoreboard/time_limited_levels
function lib/scoreboard/easter_egg_levels
function lib/scoreboard/hint
function lib/scoreboard/strategy
function lib/scoreboard/skip
function lib/scoreboard/advancement
function lib/scoreboard/difficulty

## 显示记分板
execute if score scoreboardDisplay settings matches 0 run scoreboard objectives setdisplay sidebar
execute if score scoreboardDisplay settings matches 1 run function lib/modify_data/scoreboard_hide
execute if score scoreboardDisplay settings matches 2 run function lib/modify_data/scoreboard_show
