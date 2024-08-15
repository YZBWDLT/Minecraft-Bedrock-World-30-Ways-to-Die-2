# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 地图难度设定 ---
particle wstd:orange -98 18 49

# --- 地图规则与玩法 Q&A ---
particle wstd:orange -100 18 49

# --- 制作人 ---
particle wstd:light_blue -104 18 49

# --- 浏览地图 ---
particle wstd:orange -106 18 49

# --- 关于本地图 ---
particle wstd:orange -98 18 43

# --- 权限等级设定与高级功能 ---
particle wstd:orange -100 18 43

# --- 速通模式设定 ---

## 开启状态下
execute if score speedrunMode settings matches 0 run particle wstd:red -104 18 43
## 关闭状态下
execute if score speedrunMode settings matches 1 run particle wstd:green -104 18 43

# --- 第30关对话设定 ---

## 关闭状态下
execute if score level30Dialogue settings matches 0 run particle wstd:red -106 18 43
## 开启状态下
execute if score level30Dialogue settings matches 1..2 run particle wstd:green -106 18 43

# --- 恢复所有设置为默认 ---
particle wstd:light_blue -109 18 46
