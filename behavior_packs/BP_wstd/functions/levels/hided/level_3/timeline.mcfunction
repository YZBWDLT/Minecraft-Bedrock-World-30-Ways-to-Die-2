# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 物品检测 ---
execute if score hided3.itemTestCraftingTable active matches 1 as @a[hasitem={item=crafting_table}] run function levels/hided/level_3/item_tests/crafting_table
execute if score hided3.itemTestFurnace active matches 1 as @a[hasitem={item=furnace}] run function levels/hided/level_3/item_tests/furnace
execute if score hided3.itemTestBrewingStand active matches 1 as @a[hasitem={item=brewing_stand}] run function levels/hided/level_3/item_tests/brewing_stand
execute if score hided3.itemTestWoodenPickaxe active matches 1 as @a[hasitem={item=wooden_pickaxe}] run function levels/hided/level_3/item_tests/wooden_pickaxe
execute if score hided3.itemTestStonePickaxe active matches 1 as @a[hasitem={item=stone_pickaxe}] run function levels/hided/level_3/item_tests/stone_pickaxe

# --- 炼药锅 ---

## 当炼药锅填满时，执行命令
execute if block -89 22 107 cauldron ["fill_level"=6] run function levels/hided/level_3/events/cauldron_fulfilled
