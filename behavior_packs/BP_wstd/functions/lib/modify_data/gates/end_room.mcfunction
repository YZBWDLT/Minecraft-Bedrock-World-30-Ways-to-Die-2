# ===== 结束屋大门 =====
# 用于恢复结束屋大门。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 恢复结束屋大门

fill -40 9 28 -40 12 26 quartz_block
fill -40 10 27 -40 11 27 quartz_block ["chisel_type"="chiseled"]
structure load system:ban -39 10 27
