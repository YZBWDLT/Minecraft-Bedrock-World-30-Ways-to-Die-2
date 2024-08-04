# ===== 获取物品 =====
# 用于获取一些辅助物品

# --- 不符合执行条件的情况 ---

## 未开启开发者模式
execute unless score developerMode settings matches 1 run tellraw @s {"rawtext":[{"translate":"chat.error.not_developer_mode"}]}
## 开启了开发者模式，但权限不足
execute if score developerMode settings matches 1 unless score oplevel settings matches 2 run tellraw @s {"rawtext":[{"translate":"chat.error.oplevel_too_low"}]}
## 开启了开发者模式，且权限充足，但玩家不为创造模式
execute if score developerMode settings matches 1 if score oplevel settings matches 2 unless entity @s[m=creative] run tellraw @s {"rawtext":[{"translate":"chat.error.not_creative_mode"}]}

# --- 符合执行条件的情况 ---

## 提示玩家
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run tellraw @s {"rawtext":[{"translate":"chat.developer.get_items"}]}

## 给予物品
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s netherite_sword
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s command_block
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s chain_command_block
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s repeating_command_block
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s barrier
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s border_block
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s structure_block
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s structure_void
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s light_block 1 15
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s allow
execute if score developerMode settings matches 1 if score oplevel settings matches 2 if entity @s[m=creative] run give @s deny
