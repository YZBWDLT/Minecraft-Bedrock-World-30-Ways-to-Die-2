# ===== 完成关卡 =====
# 当玩家完成关卡时执行

# --- 当在编辑模式下完成时 ---

# --- 当在游戏模式下完成时 ---

# --- 不论从什么模式完成时都执行的命令 ---

## 调用通用函数
function lib/modify_data/level/complete
## 恢复音乐 | 设定条件以防止音乐在退出后重新播放
execute if score speedrunMode settings matches 0 run function lib/modify_states/music/maingame
## 停止运行命令系统
fill -101 1 -10 -111 7 -21 air
## 移除原支线5的信标
setblock -115 19 -13 air
