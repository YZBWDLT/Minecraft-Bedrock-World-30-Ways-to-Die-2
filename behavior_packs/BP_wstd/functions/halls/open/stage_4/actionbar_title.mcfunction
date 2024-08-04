# ===== 快捷栏标题 =====

# --- 未通关过 ---
execute if score mapCompletedTimes record matches 0 if score isNetease data matches 0 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"actionbar.open.set_difficulty_line1"},{"translate":"actionbar.open.set_difficulty_line2"},{"translate":"actionbar.open.set_difficulty_line3"}]}}]}
execute if score mapCompletedTimes record matches 0 if score isNetease data matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"actionbar.open.set_difficulty_line1"},{"translate":"netease.actionbar.open.set_difficulty_line2"},{"translate":"actionbar.open.set_difficulty_line3"}]}}]}

# --- 通关过 ---
execute if score mapCompletedTimes record matches 1.. if score isNetease data matches 0 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s\n%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"actionbar.open.set_difficulty_line1"},{"translate":"actionbar.open.set_difficulty_line2"},{"translate":"actionbar.open.set_difficulty_line3"},{"translate":"actionbar.open.set_difficulty_line4"}]}}]}
execute if score mapCompletedTimes record matches 1.. if score isNetease data matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s\n%%s\n%%s\n%%s","with":{"rawtext":[{"translate":"actionbar.open.set_difficulty_line1"},{"translate":"netease.actionbar.open.set_difficulty_line2"},{"translate":"actionbar.open.set_difficulty_line3"},{"translate":"actionbar.open.set_difficulty_line4"}]}}]}
