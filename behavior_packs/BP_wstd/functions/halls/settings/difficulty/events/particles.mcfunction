# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 难度设置 ---

## 非常简单
particle wstd:light_blue -98 18 49
## 简单
particle wstd:light_blue -100 18 49
## 普通
particle wstd:light_blue -102 18 49
## 困难
particle wstd:light_blue -104 18 49

# --- 提示、攻略、跳过单项设置 ---

execute if score hintEnabled settings matches 0 run particle wstd:red -100 18 43
execute if score hintEnabled settings matches 1 run particle wstd:green -100 18 43

execute if score strategyEnabled settings matches 0 run particle wstd:red -102 18 43
execute if score strategyEnabled settings matches 1 run particle wstd:green -102 18 43

execute if score skipEnabled settings matches 0 run particle wstd:red -104 18 43
execute if score skipEnabled settings matches 1 run particle wstd:green -104 18 43
