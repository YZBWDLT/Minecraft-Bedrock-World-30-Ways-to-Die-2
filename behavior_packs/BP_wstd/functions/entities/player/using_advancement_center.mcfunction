# ===== 使用物品时 =====
# 当玩家使用物品“进度中心”时触发

# --- 使用情况不在预期内时 ---
execute unless score level data matches -20..0 run tellraw @s {"rawtext":[{"translate":"chat.error.not_hall_levels"}]}
execute unless score level data matches -20..0 run clear @s wstd:advancement_center

# --- 使用情况在预期内时 ---
execute if score level data matches -20..0 run function halls/record/advancement/start

# --- 对于一切可能的情况，都执行的内容 ---