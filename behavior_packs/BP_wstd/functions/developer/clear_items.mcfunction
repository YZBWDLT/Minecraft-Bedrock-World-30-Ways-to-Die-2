# ===== 清除物品 =====
# 用于清除玩家的辅助物品

# --- 未开启开发者模式时 ---
execute unless score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}

# --- 开启开发者模式时 ---

execute if score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.developer.clear_items"}]}

execute if score developerMode settings matches 1 run clear @s wstd:hint
execute if score developerMode settings matches 1 run clear @s wstd:skip
execute if score developerMode settings matches 1 run clear @s wstd:strategy
execute if score developerMode settings matches 1 run clear @s wstd:reset
execute if score developerMode settings matches 1 run clear @s wstd:quit
execute if score developerMode settings matches 1 run clear @s wstd:next_step
execute if score developerMode settings matches 1 run clear @s wstd:back

execute if score developerMode settings matches 1 run clear @s wstd:easter_egg_hall
execute if score developerMode settings matches 1 run clear @s wstd:diy_hall
execute if score developerMode settings matches 1 run clear @s wstd:time_limited_hall
execute if score developerMode settings matches 1 run clear @s wstd:advancement_center
execute if score developerMode settings matches 1 run clear @s wstd:stats_center
execute if score developerMode settings matches 1 run clear @s wstd:played_time
execute if score developerMode settings matches 1 run clear @s wstd:setting_center
execute if score developerMode settings matches 1 run clear @s wstd:play_music
execute if score developerMode settings matches 1 run clear @s wstd:firework_tutorial
