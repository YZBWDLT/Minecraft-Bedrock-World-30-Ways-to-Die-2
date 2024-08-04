# ===== 查询函数 =====
# 用于查询关卡ID

# --- 权限等级不足时 ---
execute unless score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.error.oplevel_too_low"}]}

# --- 有权限等级时 ---
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line1"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line2"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line3"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line4"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line5"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line6"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line7"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line8"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line9"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line10"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line11"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line12"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line13"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line14"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line15"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line16"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line17"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.level_id.line18"}]}
