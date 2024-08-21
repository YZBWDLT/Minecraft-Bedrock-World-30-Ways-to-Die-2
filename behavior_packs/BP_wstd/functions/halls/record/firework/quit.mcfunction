# ===== 退出关卡 =====
# 当玩家退出关卡时执行

# --- 调整为白天 ---
# 仅当玩家启用“仅烟花教程为黑夜”时执行
execute if score mapTime settings matches 1 run time set 6000

# --- 启用大厅函数 ---
function halls/hub/main/start
