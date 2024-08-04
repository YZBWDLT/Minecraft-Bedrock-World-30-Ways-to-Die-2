# ===== 网易版设置 =====

# --- 设置状态 ---

scoreboard players add isNetease data 1
execute if score isNetease data matches !0..1 run scoreboard players set isNetease data 0

# --- 提示 ---

## 若为国际版
execute if score isNetease data matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.adaptive_mode.international"}]}

## 若为网易版
execute if score isNetease data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.adaptive_mode.netease"}]}

## 音效
function lib/modify_states/sound/random_pop

# --- 禁止英语 ---
# 仅当为网易版时执行

execute if score isNetease data matches 1 if score language settings matches 1 run function settings/language/chinese
