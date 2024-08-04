# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 地图规则 ---
execute as @a[x=-102,y=19,z=49,r=1] run function halls/settings/question_and_answer/functions/map_rule

# --- 地图玩法 ---
execute as @a[x=-102,y=19,z=43.5,r=1] run function halls/settings/question_and_answer/functions/how_to_play

# --- 常见问题 ---
execute as @a[x=-104,y=19,z=49,r=1] run function halls/settings/question_and_answer/functions/help
