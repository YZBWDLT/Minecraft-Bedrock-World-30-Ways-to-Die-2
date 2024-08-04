# ===== 播放限时关卡音乐 =====
# 用于播放限时关卡音乐。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 若不为速通模式，播放timelimit；若为速通模式，什么也不做（防止音乐重新播放）

# --- 播放timelimit ---
execute if score speedrunMode settings matches 0 run music play timelimit 1 0 loop
