# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 当玩家拿到5张纸之后，开启隐藏第2关 ---
execute if entity @a[hasitem={item=paper,quantity=5}] run function levels/hided/level_2/start

# --- 检测玩家按下按钮 ---

## 按钮检测器
execute positioned 19 22 112 if block ~~~ stone_button ["facing_direction"=2,"button_pressed_bit"=true] run kill @p
## 检测最后的方块是否已被挖开
function levels/mainline/level_22/events/last_block_break_test
## 展示文本检测器 | 检测到中点的方块被挖开后执行 | 每秒执行1次
execute if score tick time matches 1 run function levels/mainline/level_22/events/set_text_display
