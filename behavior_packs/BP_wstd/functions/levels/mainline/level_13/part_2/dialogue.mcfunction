# ===== 剧情线 =====
# 仅限在lib/function_lists/dialogue注册后，且启用剧情线后执行

# --- 当末影珍珠被扔出，但玩家没有逃出房间时 ---
execute if score dialogue active matches 1 if score dialogue time matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.level_13.ender_pearl_used"}]}
execute if score dialogue active matches 1 if score dialogue time matches 2.. run function lib/modify_states/dialogue/disable

# --- 当玩家被卡出房间时 ---
execute if score dialogue active matches 2 if score dialogue time matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.level.level_13.void"}]}
execute if score dialogue active matches 2 if score dialogue time matches 2.. run function lib/modify_states/dialogue/disable
