# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 物品检测 ---
# (进行的物品检测，举例：execute if score level9.itemTestCraftingTable active matches 1 as @a[hasitem={item=crafting_table}] run function .../item_tests/crafting_table

# --- 功能模块 ---
# (执行的内容，举例：execute if score timeline time matches 1 run testfor @a

# --- 限时关卡倒计时 ---

## 每秒计时，若倒计时达到0则自动退出
execute if score timeline time matches 19 run scoreboard players remove remainingTime time 1
execute unless score timeline time matches 0..19 run scoreboard players set timeline time 0
## (执行退出的命令，举例：execute if score remainingTime time matches ..0 run function levels/time_limited/level_1/events/time_out
