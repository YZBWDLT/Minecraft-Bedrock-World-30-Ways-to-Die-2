# ===== 解锁限时关卡 =====

# --- 激活限时关卡的进度 ---
scoreboard players set progress.timeLimited record 0

# --- 播放音效和提示 ---
function lib/modify_states/sound/random_levelup_1
tellraw @a {"rawtext":[{"translate":"chat.unlocked.time_limited_levels"}]}

# --- 给予玩家物品 ---
execute as @a run function lib/modify_data/item/supplier
