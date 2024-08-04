# ===== 重新播放音乐 =====
# 列出该列表是为了在某些情况下可以令关卡进行特别适配，以进行优化。
# 当玩家使用“播放音乐”物品时，或者退出重进时，执行此函数以使玩家能听到新的音乐

# --- 播放普通音乐 ---
function lib/modify_states/music/maingame

# --- 当玩家处于以下关卡时，改为播放速通音乐 ---

## 36~40 | 速通关卡
execute if score level data matches 36..40 run function lib/modify_states/music/timelimit
## 48 | 彩蛋第8关
execute if score level data matches 48 run function lib/modify_states/music/timelimit
## 51~60，游戏模式 | 设置为速通模式的自定义关卡
execute if score level data matches 51..60 if score diyLevels.isEditMode data matches 0 if score remainingTime time matches 0.. run function lib/modify_states/music/timelimit

# --- 当玩家处于以下关卡时，改为播放烟花秀音乐 ---

## -13 | 第2~3阶段的动画
execute if score level data matches -13 if score timeline active matches 2..3 run function lib/modify_states/music/firework_show

# --- 当玩家处于以下关卡时，改为播放结束音乐 ---

## -13 | 第4阶段的动画
execute if score level data matches -13 if score timeline active matches 4 run function lib/modify_states/music/end
