# ===== 将玩家传送回来 =====

# --- 传送玩家 ---
tp @s -8 29 27 facing -5 29 27

# --- 提示玩家 ---

## 音效
function lib/modify_states/sound/mob_cat_meow
## 聊天栏
tellraw @s {"rawtext":[{"translate":"functions.halls.settings.explore_map.events.tp_player_back"}]}
