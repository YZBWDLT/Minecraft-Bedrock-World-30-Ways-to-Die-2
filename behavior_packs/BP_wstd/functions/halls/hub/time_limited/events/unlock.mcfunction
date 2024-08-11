# ===== 解锁限时关卡 =====

# --- 激活限时关卡的进度 ---
scoreboard players set progress.timeLimited record 0

# --- 播放音效和提示 ---
function lib/modify_states/sound/random_levelup_1
tellraw @a {"rawtext":[{"translate":"chat.unlocked.time_limited_levels"}]}

# --- 给予玩家物品 ---
# 限时关卡解锁时，玩家可能处于大厅（完成30个关卡）或彩蛋大厅（完成彩蛋第8关）。
# 然而，彩蛋大厅无需给予物品；而在大厅获取该进度时立刻进入结束特效，不应给予物品
# 综上，此模块没有命令，也不需要增加什么命令。
