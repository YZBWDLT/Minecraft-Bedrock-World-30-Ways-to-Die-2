# ===== 重置时间 =====
# 用于重置当前游玩时长

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

# --- 开启开发者模式时 ---

## 提示玩家
execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.developer.reset_played_time"}]}

## 重置时间
execute if score developerMode settings matches 1 run scoreboard players set currentMinute time 0
execute if score developerMode settings matches 1 run scoreboard players set currentSecond time 0
