# ===== 游戏模式下，正式开始游戏 =====
# 通用函数 | 在正式开始游戏前，都会先加载一次结构，因此该函数仅在加载结构后自动执行

# --- 基本 ---

## 给予玩家辅助物品
execute as @a run function lib/modify_data/item/aux_functions
execute as @a run function lib/modify_data/item/aux_functions_hard

## 激活快捷栏标题的命令方块
setblock -103 2 -18 redstone_block

## 若限时设定不为0，播放限时音乐
execute if score remainingTime time matches 0.. run function lib/modify_states/music/timelimit

## 将时间线设定为模式3（游戏模式对应的时间线）
function lib/modify_states/timeline/enable_pass_3
