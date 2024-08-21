# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 第一阶段的时间线 ---
# 面向大门，结束屋开启
execute if score timeline active matches 1 run function halls/end/stage_1/events/timeline_stage_1

# --- 第二阶段的时间线 ---
# 信标环绕视角
execute if score timeline active matches 2 run function halls/end/stage_1/events/timeline_stage_2
