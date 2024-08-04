# ===== 关卡延迟启用 =====
# 用于启用关卡延迟的倒计时。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · active.levelCompleteDelay   0    1   2    3    4    5
# ·             ↓
# · time.levelCompleteDelay     0    5   10   15   20   25

execute if score levelCompleteDelay active matches 1 run scoreboard players set levelCompleteDelay time 5
execute if score levelCompleteDelay active matches 2 run scoreboard players set levelCompleteDelay time 10
execute if score levelCompleteDelay active matches 3 run scoreboard players set levelCompleteDelay time 15
execute if score levelCompleteDelay active matches 4 run scoreboard players set levelCompleteDelay time 20
execute if score levelCompleteDelay active matches 5 run scoreboard players set levelCompleteDelay time 25
