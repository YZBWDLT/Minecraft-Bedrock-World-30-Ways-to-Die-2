# ===== 使用物品时 =====
# 当玩家使用物品“重置关卡”时触发

# --- 使用情况不在预期内时 ---

## 不在标准的关卡下 | 特殊情况：-18和-9不清理，它们在使用时不会做任何事情
execute unless score level data matches -18 unless score level data matches -9 unless score level data matches -5 unless score level data matches 0..60 run tellraw @s {"rawtext":[{"translate":"functions.general.error.not_normal_levels"}]}
execute unless score level data matches -18 unless score level data matches -9 unless score level data matches -5 unless score level data matches 0..60 run clear @s wstd:reset

## 在标准的关卡下，但该关卡未开放此功能
execute if score level data matches 51..60 if score diyLevels.isEditMode data matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.diy_levels.edit_mode"}]}
execute if score level data matches 51..60 if score diyLevels.isEditMode data matches 1 run clear @s wstd:reset

# --- 使用情况在预期内时 ---

execute if score level data matches -5 run function lib/function_lists/start_level
execute if score level data matches 0..60 run function lib/function_lists/start_level

# --- 对于一切可能的情况，都执行的内容 ---
