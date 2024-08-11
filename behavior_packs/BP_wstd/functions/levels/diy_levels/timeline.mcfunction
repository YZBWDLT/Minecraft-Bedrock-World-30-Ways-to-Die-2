# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# 基本逻辑：玩家进入游戏，会先尝试读取关卡结构。读取好了之后，会根据游戏模式和编辑模式执行不同的命令。

# --- 读取关卡时执行的时间线 ---
# 时间线激活状态：active.timeline = 1

execute if score timeline active matches 1 run function levels/diy_levels/events/timeline_loading

# --- 游戏模式下执行的时间线 ---

execute if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/events/timeline_game_mode

# --- 编辑模式下执行的时间线 ---

execute if score diyLevels.isEditMode data matches 1 run function levels/diy_levels/events/timeline_edit_mode

# --- 共同命令 ---

## 将等待区的玩家调整为冒险模式
gamemode adventure @a[x=3,y=8,z=2,dx=2,dy=2,dz=2]
