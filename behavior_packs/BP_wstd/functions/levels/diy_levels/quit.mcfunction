# ===== 退出关卡 =====
# 当玩家退出关卡时执行

# --- 当在编辑模式下退出时 ---

## 如果不是开发者模式，则更改回冒险模式
execute unless score developerMode settings matches 1 run gamemode adventure @a

# --- 当在游戏模式下退出时 ---

## 调用玩家所指定的命令
execute if score diyLevels.isEditMode data matches 0 run setblock -103 2 -13 redstone_block

# --- 不论从什么模式退出时都执行的命令 ---

## 调用通用函数
function lib/modify_data/level/quit
## 恢复音乐 | 设定条件以防止音乐在退出后重新播放
execute if score speedrunMode settings matches 0 run function lib/modify_states/music/maingame
## 停止运行命令系统
fill -101 1 -10 -111 7 -21 air
##<???> 移除原支线5的信标
setblock -115 19 -13 air
