# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 难度选择 ---

## 非常简单
particle wstd:light_blue 48 21 -22
## 简单
particle wstd:green 46 21 -22
## 中等
particle wstd:yellow 44 21 -22
## 困难
particle wstd:red 42 21 -22
## 速通模式
execute if score mapCompletedTimes record matches 1.. run particle wstd:red 41 20 -25
