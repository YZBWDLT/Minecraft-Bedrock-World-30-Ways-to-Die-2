# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 物品检测 ---
execute if score level20.itemTestCraftingTable active matches 1 as @a[hasitem={item=crafting_table}] run function levels/mainline/level_20/item_tests/crafting_table
execute if score level20.itemTestBrewingStand active matches 1 as @a[hasitem={item=brewing_stand}] run function levels/mainline/level_20/item_tests/brewing_stand
execute if score level20.itemTestWaterBucket active matches 1 as @a[hasitem={item=water_bucket}] run function levels/mainline/level_20/item_tests/water_bucket

# --- 给予玩家药效 ---
# 每秒给予1次

## 防火
execute if score tick time matches 2 run effect @a fire_resistance 30 0 true
