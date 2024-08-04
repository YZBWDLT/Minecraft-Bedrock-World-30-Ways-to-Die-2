# ===== 重新播放结束动画 =====

# --- 启动动画关卡 ---
function halls/end/stage_2/start

# --- 提示玩家 ---
tellraw @a {"rawtext":[{"translate":"chat.replay_end_effects"}]}

# --- 将玩家传送出检测区 ---
tp @a -27 9 27
