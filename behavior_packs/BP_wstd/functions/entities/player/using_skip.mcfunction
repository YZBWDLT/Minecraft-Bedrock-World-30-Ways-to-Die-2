# ===== 使用物品时 =====
# 当玩家使用物品“跳过关卡”时触发

# --- 使用情况不在预期内时 ---

## 不在标准的关卡下
execute unless score level data matches -18 unless score level data matches -9 unless score level data matches 0..60 run tellraw @s {"rawtext":[{"translate":"functions.general.error.not_normal_levels"}]}
execute unless score level data matches -18 unless score level data matches -9 unless score level data matches 0..60 run clear @a wstd:skip

## 在标准的关卡下，但该关卡未开放此功能
execute if score level data matches 1..50 unless score level data matches 13 unless score level data matches 20..22 unless score level data matches 30..32 unless score level data matches 36 unless score level data matches 39..40 run tellraw @s {"rawtext":[{"translate":"functions.general.not_available_in_this_level"}]}
execute if score level data matches 51..60 if score diyLevels.isEditMode data matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.diy_levels.edit_mode"}]}

# --- 使用情况在预期内时 ---

execute if score level data matches -18 run function lib/function_lists/skip
execute if score level data matches 13 run function lib/function_lists/skip
execute if score level data matches 20..22 run function lib/function_lists/skip
execute if score level data matches 30..32 run function lib/function_lists/skip
execute if score level data matches 36 run function lib/function_lists/skip
execute if score level data matches 39..40 run function lib/function_lists/skip
execute if score level data matches 51..60 if score diyLevels.isEditMode data matches 0 run function lib/function_lists/skip

# --- 对于一切可能的情况，都执行的内容 ---
