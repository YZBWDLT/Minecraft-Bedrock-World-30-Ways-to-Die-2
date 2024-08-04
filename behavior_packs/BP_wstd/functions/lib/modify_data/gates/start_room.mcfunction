# ===== 起始屋大门 =====
# 用于恢复起始屋大门。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 恢复起始屋大门

fill 22 9 28 22 12 26 quartz_block
fill 22 10 27 22 11 27 quartz_block ["chisel_type"="chiseled"]
structure load system:ban 23 10 27
