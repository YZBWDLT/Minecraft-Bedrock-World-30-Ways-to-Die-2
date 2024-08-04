# ===== 退出关卡 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable

## 调用通用函数
function lib/modify_data/level/quit

# --- 特殊内容 ---

## 停用特殊分值
scoreboard players reset timeLimited4.totalScore data

# --- 限时关卡 ---

## 恢复音乐 | 设定条件以防止音乐在退出后重新播放
execute if score speedrunMode settings matches 0 run function lib/modify_states/music/maingame
