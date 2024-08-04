# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 检测通关 ---

## 若红石灯亮起，则替换岩浆块为岩浆
execute if block 3 21 65 lit_redstone_lamp if block 3 25 60 magma run function levels/mainline/level_13/part_1/events/set_lava
