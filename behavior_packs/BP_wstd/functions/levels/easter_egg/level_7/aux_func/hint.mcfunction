# ===== 使用提示 =====

# --- 提示 ---
execute if score isNetease data matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.hint.easter_egg_7"}]}
execute if score isNetease data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"netease.chat.hint.easter_egg_7"}]}
