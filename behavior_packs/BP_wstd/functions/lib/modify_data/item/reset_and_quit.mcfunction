# ===== 重置与退出 =====
# 用于给予玩家重置与退出

# 调用此方法时：
# · 执行者为玩家
# · 执行位置任意
# 输出结果：
# · 若玩家没有重置与退出物品，则给予玩家重置与退出

# --- 清除物品 ---
function lib/modify_data/item/clear

# --- 给予重置与退出 ---
give @s[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @s[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
replaceitem entity @s[hasitem={item=wstd:play_music,quantity=0}] slot.inventory 8 wstd:play_music 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
