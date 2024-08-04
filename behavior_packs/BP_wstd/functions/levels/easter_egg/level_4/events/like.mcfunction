# ===== 玩家选择好评 =====

# --- 提示玩家 ---

## 聊天栏
tellraw @s {"rawtext":[{"translate":"chat.level.easter_egg_4.like"}]}
## 音效
function lib/modify_states/sound/mob_villager_yes

# --- 传送玩家 ---
tp @a -17 22 -45 facing -24 22 -45

# --- 记录好评次数 ---
scoreboard players add easterEgg4.likedTimes data 1
