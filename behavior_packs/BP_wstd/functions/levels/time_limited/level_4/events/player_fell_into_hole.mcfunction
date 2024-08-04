# ===== 当玩家掉到坑里时 =====

# --- 提示玩家 ---

## 音效
function lib/modify_states/sound/mob_cat_meow
## 聊天栏
tellraw @s {"rawtext":[{"translate":"chat.level.time_limited_4.fell_into_hole"}]}

# --- 将玩家传送回来 ---
tp @s -46 32 -95 facing -60 32 -95
