# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 物品检测 ---
execute if score level9.itemTestCraftingTable active matches 1 as @a[hasitem={item=crafting_table}] run function levels/mainline/level_9/item_tests/crafting_table
