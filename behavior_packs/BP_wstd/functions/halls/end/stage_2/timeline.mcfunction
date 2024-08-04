# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 特效触发 ---
# 当玩家进入结束屋后，开始特效动画展示
execute if score timeline active matches 6 if entity @a[x=-41,y=9,z=27,r=1.5] run function halls/end/stage_2/events/start_stage_1
execute if score timeline active matches 6 if entity @a[x=-46,y=9,z=27,r=3] run function halls/end/stage_2/events/start_stage_1

# --- 第一阶段的时间线 ---
# 和作者进行对话
execute if score timeline active matches 1 run function halls/end/stage_2/events/timeline_stage_1

# --- 第二阶段的时间线 ---
# 结束特效部分
execute if score timeline active matches 2 run function halls/end/stage_2/events/timeline_stage_2

# --- 第三阶段的时间线 ---
# 和作者再次对话
execute if score timeline active matches 3 run function halls/end/stage_2/events/timeline_stage_3
