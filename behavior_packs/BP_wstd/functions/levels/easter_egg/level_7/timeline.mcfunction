# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 物品检测 ---
execute if score easterEgg7.itemTestLever active matches 1 as @a[hasitem={item=lever}] run function levels/easter_egg/level_7/item_tests/lever

# --- 红石灯检测 ---
execute positioned -32 28 -64 if block ~~~ lit_redstone_lamp run kill @p
execute positioned -32 28 -64 if block ~~~ lit_redstone_lamp run setblock ~~~ air destroy
