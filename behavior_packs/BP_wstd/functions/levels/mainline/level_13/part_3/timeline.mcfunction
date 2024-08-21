# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 检测通关 ---

## 若红石灯亮起，则替换岩浆块为岩浆
execute if block -46 21 55 lit_redstone_lamp if block -49 25 60 magma run function levels/mainline/level_13/part_3/events/set_lava

# --- 频闪次数检测 ---

## 若红石线路闪烁，则频闪次数+1
execute if block -49 21 63 redstone_wire ["redstone_signal"=15] run scoreboard players add level13.redstoneActivatedTimes data 1
## 当左侧频闪10次时，亮起右侧的灯
execute if score level13.redstoneActivatedTimes data matches 10.. run setblock -54 20 60 redstone_torch ["torch_facing_direction"="north"]
