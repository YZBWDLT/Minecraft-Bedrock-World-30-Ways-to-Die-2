# ===== 使用物品时 =====
# 当玩家使用物品“退出关卡”时触发

# --- 使用情况不在预期内时 ---

## 不在标准的关卡下 | 特殊情况：-18不清理，-18在使用时不会做任何事情
execute unless score level data matches -18 unless score level data matches -14 unless score level data matches 1..60 run tellraw @s {"rawtext":[{"translate":"functions.general.error.not_normal_levels"}]}
execute unless score level data matches -18 unless score level data matches -14 unless score level data matches 1..60 run clear @a wstd:quit

# --- 使用情况在预期内时 ---

## 调用函数列表
execute if score level data matches -14 run function lib/function_lists/quit_level
execute if score level data matches 1..60 run function lib/function_lists/quit_level

# --- 对于一切可能的情况，都执行的内容 ---
