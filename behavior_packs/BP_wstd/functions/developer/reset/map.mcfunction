# ===== 重置地图 =====
# 发布地图专用
# 将地图重置到最初的状态

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

# --- 开启开发者模式时 ---

## 重置记录和重置地图
execute if score developerMode settings matches 1 run function lib/modify_data/init/record
execute if score developerMode settings matches 1 run function lib/modify_data/init/map
execute if score developerMode settings matches 1 run function lib/modify_data/init/gamerule
execute if score developerMode settings matches 1 run tp @a 3 8 6
