# ===== 使用物品时 =====
# 当玩家使用物品“重置命令系统”时触发

# --- 使用情况不在预期内时 ---

## 不在自定义关卡下
execute unless score level data matches 51..60 run tellraw @s {"rawtext":[{"translate":"chat.error.diy_levels.not_edit_mode"}]}
execute unless score level data matches 51..60 run tellraw @s {"rawtext":[{"translate":"chat.error.invalid_level_id.not_expected","with":{"rawtext":[{"score":{"objective":"data","name":"@e[name=level]"}}]}}]}
execute unless score level data matches 51..60 run clear @s wstd:reset_command_system

## 在自定义关卡下，但不在编辑模式下
execute if score level data matches 51..60 unless score diyLevels.isEditMode data matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.diy_levels.not_edit_mode"}]}
execute if score level data matches 51..60 unless score diyLevels.isEditMode data matches 1 run clear @s wstd:reset_command_system

# --- 使用情况在预期内时 ---

## 执行到自定义关卡的reset_command_system上
execute if score level data matches 51..60 if score diyLevels.isEditMode data matches 1 run function levels/diy_levels/functions/reset_command_system

# --- 对于一切可能的情况，都执行的内容 ---

## 音效
function lib/modify_states/sound/random_pop
