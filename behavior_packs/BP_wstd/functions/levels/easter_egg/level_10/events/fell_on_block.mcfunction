# ===== 玩家摔到方块上时 =====

# --- 提示 ---

## 音效
function lib/modify_states/sound/mob_cat_meow
## 聊天栏
tellraw @s {"rawtext":[{"translate":"chat.level.easter_egg_10.failed"}]}

# --- 传送玩家 ---
tp @s 36 78 -45 facing 23 79 -45
