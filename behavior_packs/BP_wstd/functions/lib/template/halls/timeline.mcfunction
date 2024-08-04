# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 物品检测 ---
# (进行的物品检测，举例：execute if score level9.itemTestCraftingTable active matches 1 as @a[hasitem={item=crafting_table}] run function .../item_tests/crafting_table

# --- 粒子设定 ---
# 每秒执行1次
# (指定关卡使用的粒子，举例：execute if score tick time matches 0 run function halls/.../events/particles

# --- 玩家进入检测 ---
# 用于判断玩家是否走进粒子光束中
# (指定关卡使用的检测函数，举例：function halls/.../events/enter_test

# --- 功能模块 ---
# (执行的内容，举例：execute if score timeline time matches 1 run testfor @a
