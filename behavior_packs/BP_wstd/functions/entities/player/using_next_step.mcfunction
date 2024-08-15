# ===== 使用物品时 =====
# 当玩家使用物品“下一步”时触发

# --- 使用情况不在预期内时 ---

execute unless score level data matches -17 unless score level data matches -15..-14 unless score level data matches -5 unless score level data matches -1 unless score level data matches 36 unless score level data matches 38..40 unless score level data matches 51..60 run tellraw @s {"rawtext":[{"translate":"chat.error.invalid_level_id.not_expected","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}
execute unless score level data matches -17 unless score level data matches -15..-14 unless score level data matches -5 unless score level data matches -1 unless score level data matches 36 unless score level data matches 38..40 unless score level data matches 51..60 run clear @s wstd:next_step

# --- 使用情况在预期内时 ---

execute if score level data matches -17 run function lib/function_lists/next_step
execute if score level data matches -15..-14 run function lib/function_lists/next_step
execute if score level data matches -5 run function lib/function_lists/next_step
execute if score level data matches -1 run function lib/function_lists/next_step
execute if score level data matches 36 run function lib/function_lists/next_step
execute if score level data matches 38..40 run function lib/function_lists/next_step
execute if score level data matches 51..60 run function lib/function_lists/next_step

# --- 对于一切可能的情况，都执行的内容 ---
