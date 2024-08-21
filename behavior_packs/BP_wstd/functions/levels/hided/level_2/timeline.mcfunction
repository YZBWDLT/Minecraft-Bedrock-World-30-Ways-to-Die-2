# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 检测玩家按下按钮 ---

## 按钮检测器
execute positioned -60 22 106 if block ~~~ stone_button ["facing_direction"=3,"button_pressed_bit"=true] run kill @p
## 检测最后的方块是否已被挖开
execute if score hided2.endBlockBroken data matches 0 run function levels/hided/level_2/events/last_block_break_test
## 展示文本检测器 | 检测到中点的方块被挖开后执行 | 每秒执行1次
execute if score tick time matches 1 run function levels/hided/level_2/events/set_text_display
