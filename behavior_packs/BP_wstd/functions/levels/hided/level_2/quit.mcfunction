# ===== 退出关卡 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable

## 调用通用函数
function lib/modify_data/level/quit

# --- 特殊内容 ---

## 停用特殊分值
scoreboard players reset hided2.endBlockBroken data
