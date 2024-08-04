# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable
function lib/modify_states/level_complete_delay/disable

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.level record matches 6 run scoreboard players set progress.level record 7

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息 | 本关禁用自定义死亡消息

# --- 下一关 ---

## 传送玩家到下一关
tp @a -9 10 27 facing -9 10 30

# --- 特殊内容 ---

## 清理传送门
execute in overworld run fill 15 21 70 18 25 70 air
## 重置gamerule | 停用原版死亡提示
gamerule showdeathmessages false
## 停用特殊分值 | 移除检测变量
scoreboard players reset level7.enteredNether data
