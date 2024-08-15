# ===== 使用物品时 =====
# 当玩家使用物品“返回”时触发

# --- 使用情况不在预期内时 ---
execute unless score level data matches -14..0 unless score level data matches 51..60 run tellraw @s {"rawtext":[{"translate":"chat.error.invalid_level_id.not_expected","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}
execute unless score level data matches -14..0 unless score level data matches 51..60 run clear @s wstd:back

# --- 使用情况在预期内时 ---

execute if score level data matches -14..0 run function lib/function_lists/back
execute if score level data matches 51..60 run function lib/function_lists/back

# --- 对于一切可能的情况，都执行的内容 ---
