# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable
function lib/modify_states/dialogue/disable

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.level record matches 13 run scoreboard players set progress.level record 31

# --- 下一关 ---

## 传送玩家到下一关
function levels/mainline/level_13/part_3/start

# --- 特殊内容 ---

## 停用物品检测
scoreboard players reset level13.itemTestRedstoneRepeater active
