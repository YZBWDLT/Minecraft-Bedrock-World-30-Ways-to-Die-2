# ===== 编辑模式下，正式开始游戏 =====

# --- 显示展示文本 ---
execute if score language data matches 0 run function levels/diy_levels/text_display/chinese
execute if score language data matches 1 run function levels/diy_levels/text_display/english

# --- 重新给予玩家物品 ---
replaceitem entity @a slot.inventory 0 barrier
replaceitem entity @a slot.inventory 1 command_block
replaceitem entity @a slot.inventory 2 allow
execute as @a run function lib/modify_data/item/supplier

# --- 走出加载模式 ---
# 停止状态1的时间线计时

function lib/modify_states/timeline/enable_6
