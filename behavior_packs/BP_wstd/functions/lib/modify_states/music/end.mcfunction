# ===== 播放结束音乐 =====
# 用于播放结束音乐。

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 播放end（一次），随后，若不为速通模式，排队maingame；若为速通模式，排队timelimited

# --- 播放end ---

music play end 1 0 play_once

# --- 排队音乐 ---

## 若为普通模式，排队普通音乐
execute if score speedrunMode settings matches 0 run music queue maingame 1 0 loop
## 若为速通模式，排队速通音乐
execute if score speedrunMode settings matches 1 run music queue timelimit 1 0 loop
