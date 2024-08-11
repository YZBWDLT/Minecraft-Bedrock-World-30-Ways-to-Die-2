# ===== 所有关卡退出时的通用函数 =====

# --- 实体 ---

## 清除掉落物与多余实体 | 写在大厅函数前，防止将展示文本清除
kill @e[type=!player,family=!marker,type=!ender_dragon]

# --- 常规 ---
# 调用通用函数（回到对应的大厅）

## 从主线关卡退出时
execute if score level data matches !36..60 run function halls/hub/main/start
## 从限时关卡退出时
execute if score level data matches 36..40 run function halls/hub/time_limited/start
## 从彩蛋关卡退出时
execute if score level data matches 41..50 run function halls/hub/easter_egg/start
## 从自定义关卡退出时
execute if score level data matches 51..60 run function halls/hub/diy/start

## 恢复辅助功能使用状态 | <!>在执行该通用函数之前必须先将需要用到这三个变量的命令提前执行
scoreboard players set hintUsed data 0
scoreboard players set strategyUsed data 0
scoreboard players set skipUsed data 0

# --- 物品 ---

# --- 玩家 ---

# --- 世界 ---
