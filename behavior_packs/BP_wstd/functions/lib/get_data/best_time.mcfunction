# ===== 获取最佳时间 =====
# 用于比对玩家当前游玩时间与记录的最佳时间，并记录更短的那一个。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出更短的时间到record.bestTime.minute、record.bestTime.second、record.bestTime.tick

# --- 比对分钟数 ---
# 先进行分钟数的比对，若当前分钟数小则证明当前时间必然更短
execute if score endTime.minute record < bestTime.minute record run scoreboard players operation bestTime.tick record = endTime.tick record
execute if score endTime.minute record < bestTime.minute record run scoreboard players operation bestTime.second record = endTime.second record
execute if score endTime.minute record < bestTime.minute record run scoreboard players operation bestTime.minute record = endTime.minute record

# --- 比对秒数 ---
# 若分钟数相等，当前秒数小则证明当前时间必然更短
# 可以安心的是，若第一模块已经将最佳时间修正，那么下面的几条命令将不会有什么本质性的更改
execute if score endTime.minute record = bestTime.minute record if score endTime.second record < bestTime.second record run scoreboard players operation bestTime.tick record = endTime.tick record
execute if score endTime.minute record = bestTime.minute record if score endTime.second record < bestTime.second record run scoreboard players operation bestTime.second record = endTime.second record

# --- 比对刻数 ---
# 若分钟数和秒数全相等，当前刻数小则证明当前时间必然更短
execute if score endTime.minute record = bestTime.minute record if score endTime.second record = bestTime.second record if score endTime.tick record < bestTime.tick record run scoreboard players operation bestTime.tick record = endTime.tick record
