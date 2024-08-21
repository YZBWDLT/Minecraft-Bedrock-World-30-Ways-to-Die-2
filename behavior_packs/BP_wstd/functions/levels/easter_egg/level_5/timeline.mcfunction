# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 物品检测 ---
execute if score easterEgg5.itemTestIronPickaxe active matches 1 as @a[hasitem={item=iron_pickaxe}] run function levels/easter_egg/level_5/item_tests/iron_pickaxe
execute if score easterEgg5.itemTestDiamondPickaxe active matches 1 as @a[hasitem={item=diamond_pickaxe}] run function levels/easter_egg/level_5/item_tests/diamond_pickaxe
