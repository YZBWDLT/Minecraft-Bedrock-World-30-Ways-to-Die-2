# ===== 播放结束音乐 =====

# --- 播放音乐 ---
function lib/modify_states/music/end

# --- 提示玩家 ---
tellraw @s {"rawtext":[{"translate":"chat.play_end_music"}]}
function lib/modify_states/sound/random_pop

# --- 将玩家传送出去 ---
tp @s -46 9 30
