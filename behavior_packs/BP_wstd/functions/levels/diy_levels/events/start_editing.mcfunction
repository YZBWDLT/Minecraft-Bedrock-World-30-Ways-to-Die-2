# ===== 编辑模式下，正式开始游戏 =====

# --- 显示展示文本 ---
execute if score language data matches 0 run function levels/diy_levels/text_display/chinese
execute if score language data matches 1 run function levels/diy_levels/text_display/english

# --- 走出加载模式 ---
# 停止状态1的时间线计时

function lib/modify_states/timeline/enable_6

# --- 重新给予玩家物品 ---
replaceitem entity @a slot.inventory 0 barrier
replaceitem entity @a slot.inventory 1 command_block
replaceitem entity @a slot.inventory 2 allow
give @a[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @a[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @a[hasitem={item=wstd:change_room_size,quantity=0}] wstd:change_room_size 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @a[hasitem={item=wstd:reset_command_system,quantity=0}] wstd:reset_command_system 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @a[hasitem={item=wstd:save_level,quantity=0}] wstd:save_level 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @a[hasitem={item=wstd:load_level,quantity=0}] wstd:load_level 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 更改游戏模式为创造模式 ---
## 仅限非开发者模式下执行
execute unless score developerMode settings matches 1 run gamemode creative @a

# --- 清除掉落物 ---
kill @e[type=item]
