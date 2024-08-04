# ===== 地图规则 =====

# --- 正文 ---

tellraw @a {"rawtext":[{"translate":"chat.map_rule.line1"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line2"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line3"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line4"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line5"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line6"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line7"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line8"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line9"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line10"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line11"}]}
tellraw @a {"rawtext":[{"translate":"chat.map_rule.line12"}]}
execute if score isNetease data matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.map_rule.line13"}]}
execute if score isNetease data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"netease.chat.map_rule.line13"}]}

# --- 音效 ---
function lib/modify_states/sound/mob_villager_yes
