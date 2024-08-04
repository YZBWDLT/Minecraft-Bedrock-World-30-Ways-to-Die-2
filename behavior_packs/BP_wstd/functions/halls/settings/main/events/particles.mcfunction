# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 地图规则与玩法 Q&A ---
particle wstd:orange -98 18 49

# --- 地图难度与语言设定 ---
particle wstd:orange -100 18 49

# --- 第30关对话设定 ---

## 关闭状态下
execute if score level30Dialogue settings matches 0 run particle wstd:red -102 18 49
## 开启状态下
execute if score level30Dialogue settings matches 1..2 run particle wstd:green -102 18 49

# --- gamerule锁定设定 ---

## 关闭状态下
execute if score gameruleLock settings matches 0 run particle wstd:red -104 18 49
## 开启状态下
execute if score gameruleLock settings matches 1 run particle wstd:green -104 18 49

# --- 结束特效的烟花设定 ---
particle wstd:orange -106 18 49

# --- 地图时间设定 ---
particle wstd:light_blue -108 18 49

# --- 关卡完成延时设定 ---

## 延时设定为0~0.25秒时（作为警告） | settings.levelCompleteDelay = 0..1 or 6
execute if score levelCompleteDelay settings matches 0..1 run particle wstd:red -98 18 43
execute if score levelCompleteDelay settings matches 6 run particle wstd:red -98 18 43
## 延时设定为更高时 | settings.levelCompleteDelay = 2..5 or 7..10
execute if score levelCompleteDelay settings matches 2..5 run particle wstd:light_blue -98 18 43
execute if score levelCompleteDelay settings matches 7..10 run particle wstd:light_blue -98 18 43

# --- 浏览地图 ---
particle wstd:orange -100 18 43

# --- 记分板显示设定 ---
particle wstd:light_blue -102 18 43

# --- 速通模式设定 ---

## 开启状态下
execute if score speedrunMode settings matches 0 run particle wstd:red -104 18 43
## 关闭状态下
execute if score speedrunMode settings matches 1 run particle wstd:green -104 18 43

# --- 权限等级设定与高级功能 ---
particle wstd:orange -106 18 43

# --- 关于本地图 ---
particle wstd:orange -108 18 43

# --- 恢复所有设置为默认 ---
particle wstd:light_blue -109 18 46
