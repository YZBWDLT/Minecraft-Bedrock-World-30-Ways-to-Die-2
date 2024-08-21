# ===== 关卡完成控制器 =====
# 该控制器将按照不同的data.level值执行不同的关卡完成效果。

# --- 延迟通关 ---
# 部分关卡或进度的获取因为瞬时通关会出现问题，所以需要延迟通关

## ~ 若延迟通关已启用 ~
## 如果玩家已重生，进行通关倒计时
execute if score levelCompleteDelay active matches 1..10 if entity @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] run scoreboard players remove levelCompleteDelay time 1
## 如果玩家尚未重生，则将关卡完成延迟设为对应挡位的值 | 部分关卡使用：1-5，全体关卡使用：6-10 | 倒计时的挡位分别为：5、10、15、20、25游戏刻
execute if score levelCompleteDelay active matches 1..10 unless entity @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] run function lib/modify_data/level_complete_delay

## ~ 若延迟通关未启用 ~
## 通关倒计时归零
execute if score levelCompleteDelay active matches 0 run scoreboard players set levelCompleteDelay time 0

# --- 关卡完成判断 ---

## 当有玩家处于复活点时，设置为已完成关卡（data.levelCompleted = 1），否则为0
execute unless entity @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] run scoreboard players set levelCompleted data 0
execute if entity @a[x=11,y=8,z=2,dx=2,dy=2,dz=2,c=1] run scoreboard players set levelCompleted data 1

# --- 关卡完成函数文件列表 ---
# 执行条件：
# · 关卡已完成（data.levelCompleted = 1） | 这条已经暗含了玩家正在复活点内
# · 延迟通关的倒计时结束（time.levelCompleteDelay = 0）

execute if score levelCompleted data matches 1 if score levelCompleteDelay time matches 0 run function lib/function_lists/complete
