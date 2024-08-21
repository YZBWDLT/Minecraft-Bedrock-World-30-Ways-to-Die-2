# ===== 播放普通关卡音乐 =====
# 用于播放普通关卡音乐。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 若不为速通模式，播放maingame；若为速通模式，播放timelimited

# --- 若为普通模式，播放普通音乐 ---
execute if score speedrunMode settings matches 0 run music play maingame 1 0 loop

# --- 若为速通模式，播放速通音乐 ---
execute if score speedrunMode settings matches 1 run music play timelimit 1 0 loop
