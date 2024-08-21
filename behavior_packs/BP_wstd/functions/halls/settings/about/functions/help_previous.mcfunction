# ===== 上一条帮助 =====

# --- 分值变换 ---
scoreboard players remove settingCenter.help data 1
execute unless score settingCenter.help data matches 1..21 run scoreboard players set settingCenter.help data 21

# --- 文本展示实体重显示 ---
execute if score language data matches 0 run function halls/settings/about/text_display/chinese_help
execute if score language data matches 1 run function halls/settings/about/text_display/english_help

# --- 玩家 ---

## 传送
tp @a -103 19 44 0 0

## 音效提示
function lib/modify_states/sound/random_pop
