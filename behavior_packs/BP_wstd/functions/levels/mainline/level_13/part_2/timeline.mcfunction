# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 物品检测 ---
execute if score level13.itemTestRedstoneRepeater active matches 1 as @a[hasitem={item=repeater}] run function levels/mainline/level_13/part_2/item_tests/repeater

# --- 检测通关 ---

## 若红石灯亮起，则替换岩浆块为岩浆
execute if block -28 26 58 lit_redstone_lamp if block -23 31 60 magma run function levels/mainline/level_13/part_2/events/set_lava

# --- 阻止末影珍珠扔出 ---

## 检测到有末影珍珠被扔出时，将末影珍珠清除并重新给予玩家末影珍珠
execute as @e[type=ender_pearl] run function levels/mainline/level_13/part_2/events/clear_ender_pearl
## 若玩家逃出房间掉入虚空，或头正被石英块卡住时，将玩家重新传送回房间并重新给予玩家末影珍珠
execute as @a at @s if entity @s[x=~,y=-1,z=~,dx=0,dy=-50,dz=0] run function levels/mainline/level_13/part_2/events/tp_player_back
execute as @a at @s if block ~~1~ quartz_block run function levels/mainline/level_13/part_2/events/tp_player_back
