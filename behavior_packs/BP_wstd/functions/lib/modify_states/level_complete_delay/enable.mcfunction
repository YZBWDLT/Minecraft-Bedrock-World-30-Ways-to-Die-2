# ===== 启用关卡延迟 =====
# 用于启用关卡延迟。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 启用关卡延迟，关卡延迟归零

# --- 根据设置设定关卡延迟启用状态 ---
# active   | 0 1 2 3 4 5 6 7 8 9 10
# settings | 0 1 2 3 4 5 1 2 3 4 5

scoreboard players operation levelCompleteDelay active = levelCompleteDelay settings
execute if score levelCompleteDelay active matches 6..10 run scoreboard players remove levelCompleteDelay active 5

# --- 根据关卡延迟启用状态决定关卡延迟时间 ---
# active | 1 2  3  4  5
# time   | 5 10 15 20 25

execute if score levelCompleteDelay active matches 1 run scoreboard players set levelCompleteDelay time 5
execute if score levelCompleteDelay active matches 2 run scoreboard players set levelCompleteDelay time 10
execute if score levelCompleteDelay active matches 3 run scoreboard players set levelCompleteDelay time 15
execute if score levelCompleteDelay active matches 4 run scoreboard players set levelCompleteDelay time 20
execute if score levelCompleteDelay active matches 5 run scoreboard players set levelCompleteDelay time 25
