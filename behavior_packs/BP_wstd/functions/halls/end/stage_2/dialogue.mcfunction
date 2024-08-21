# ===== 剧情线 =====

# --- 第一阶段的剧情线 ---
# 和作者进行对话
execute if score dialogue active matches 6 run function halls/end/stage_2/events/dialogue_stage_1

# --- 第二阶段的剧情线 ---
# 结束特效部分
execute if score dialogue active matches 2 run function halls/end/stage_2/events/dialogue_stage_2
execute if score dialogue active matches 7 run function halls/end/stage_2/events/dialogue_stage_2

# --- 第三阶段的剧情线 ---
# 和作者再次对话
execute if score dialogue active matches 8 run function halls/end/stage_2/events/dialogue_stage_3
