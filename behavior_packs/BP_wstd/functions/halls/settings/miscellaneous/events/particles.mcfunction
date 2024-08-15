# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 第30关对话设定 ---

## 关闭状态下
execute if score level30Dialogue settings matches 0 run particle wstd:red -100 18 49
## 开启状态下
execute if score level30Dialogue settings matches 1..2 run particle wstd:green -100 18 49

# --- 结束特效的烟花设定 ---
particle wstd:orange -104 18 49

# --- 记分板显示设定 ---
particle wstd:light_blue -100 18 43

# --- 地图时间设定 ---
particle wstd:light_blue -104 18 43
