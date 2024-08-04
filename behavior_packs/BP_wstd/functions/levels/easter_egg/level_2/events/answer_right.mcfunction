# ===== 玩家回答正确 =====

# --- 回答正确个数+1 ---

## 计数
scoreboard players add easterEgg2.totalScore data 1
## 若玩家达到5分，则杀死玩家
execute if score easterEgg2.totalScore data matches 5.. run kill @p

# --- 重置展示文本 ---

execute if score language settings matches 0 run function levels/easter_egg/level_2/text_display/chinese
execute if score language settings matches 1 run function levels/easter_egg/level_2/text_display/english

# --- 传送玩家 ---
tp @a -62 22 -25 facing -69 22 -25

# --- 提示 ---

## 音效
function lib/modify_states/sound/mob_villager_yes
