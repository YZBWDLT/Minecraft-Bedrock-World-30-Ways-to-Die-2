# ===== 摧毁下界传送门 =====
# 当玩家试图进入下界传送门时，摧毁之

# --- 提醒玩家 ---
tellraw @s {"rawtext":[{"translate":"chat.level.level_30.portal"}]}

# --- 摧毁传送门 ---
fill ~-2~-2~-2~2~2~2 air [] replace portal
