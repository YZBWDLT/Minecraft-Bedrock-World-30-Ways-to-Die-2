# ===== 查询函数 =====
# 用于查询关卡ID

# --- 权限等级不足时 ---
execute unless score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.error.oplevel_too_low"}]}

# --- 有权限等级时 ---
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line1"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line2"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line3"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line4"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line5"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line6"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line7"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line8"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line9"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line10"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line11"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line12"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line13"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line14"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line15"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line16"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line17"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line18"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line19"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line20"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line21"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line22"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line23"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line24"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line25"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line26"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line27"}]}
execute if score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.developer.query.structure.line28"}]}
