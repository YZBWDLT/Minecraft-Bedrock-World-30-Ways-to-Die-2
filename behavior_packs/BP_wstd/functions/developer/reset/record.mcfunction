# ===== 重置记录 =====
# 重置当前的地图所有记录

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

# --- 开启开发者模式时 ---

## 提示玩家
execute if score developerMode settings matches 1 run tellraw @a {"rawtext":[{"translate":"chat.developer.reset_record"}]}
## 调用重置记录的方法
execute if score developerMode settings matches 1 run function lib/modify_data/init/record
