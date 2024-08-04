# ===== 正式开始游戏 =====
# 当玩家使用“下一步”时，开始游戏

# --- 若游戏还未开始，开始游戏 ---
function lib/modify_states/timeline/enable_pass_1_keep

# --- 移除玩家的下一步物品 ---
clear @a wstd:next_step
