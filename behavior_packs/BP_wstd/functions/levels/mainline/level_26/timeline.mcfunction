# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 物品检测 ---
execute if score level26.itemTestDispenser active matches 1 as @a[hasitem={item=dispenser}] run function levels/mainline/level_26/item_tests/dispenser

