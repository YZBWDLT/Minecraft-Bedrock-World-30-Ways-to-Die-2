# ===== 调整游戏模式/编辑模式 =====

# --- 分值变换 ---
scoreboard players add diyLevels.isEditMode data 1
execute if score diyLevels.isEditMode data matches !0..1 run scoreboard players set diyLevels.isEditMode data 0

# --- 改为游戏模式的提示 ---
execute if score diyLevels.isEditMode data matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.diy_hall.gaming_mode"}]}

# --- 改为编辑模式的提示 ---
execute if score diyLevels.isEditMode data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.diy_hall.edit_mode"}]}

# --- 通用 ---

## 音效提示
function lib/modify_states/sound/random_pop
## 重新显示展示文本
execute if score language data matches 0 run function halls/hub/diy/text_display/chinese
execute if score language data matches 1 run function halls/hub/diy/text_display/english
