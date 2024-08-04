# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# 自定义关卡的逻辑非常复杂，我在这里有必要加入一些额外解释以让你更容易地看懂。当然，前提是你已经大体地了解了本作的时间线运作的方式。
# 首先，如你所知，自定义关卡分为游戏模式和编辑模式。
# 只要进入关卡，那么就要首先读取关卡结构。但读取是需要时间的。
# 问题就出在这里，游戏模式和编辑模式都需要读取关卡，并且有相同有不同，最好的方法也许只能是同时穿插执行。
# 现在新的函数已经尽可能做了一些努力了，已经在保证你尽量能看懂了。

# 基本逻辑：玩家进入游戏，会先尝试读取关卡结构。读取好了之后，会根据游戏模式和编辑模式执行不同的命令。

# --- 游戏模式下执行的时间线 ---

execute if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/events/timeline_game_mode

# --- 编辑模式下执行的时间线 ---

execute if score diyLevels.isEditMode data matches 1 run function levels/diy_levels/events/timeline_edit_mode

# --- 读取关卡时执行的时间线 ---
# 时间线激活状态：active.timeline = 1

execute if score timeline active matches 1 run function levels/diy_levels/events/timeline_loading

# --- 共同命令 ---

## 将等待区的玩家调整为冒险模式
gamemode adventure @a[x=3,y=8,z=2,dx=2,dy=2,dz=2]
