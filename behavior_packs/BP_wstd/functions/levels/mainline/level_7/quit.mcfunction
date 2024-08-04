# ===== 退出关卡 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable
function lib/modify_states/level_complete_delay/disable

## 调用通用函数
execute in overworld run function lib/modify_data/level/quit

# --- 特殊内容 ---

## 清理传送门
execute in overworld run fill 15 21 70 18 25 70 air
## 重置gamerule | 停用原版死亡提示
gamerule showdeathmessages false
## 停用特殊分值 | 移除检测变量
scoreboard players reset level7.enteredNether data
