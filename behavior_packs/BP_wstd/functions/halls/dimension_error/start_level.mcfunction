# ===== 开始游戏 =====
# 在特定关卡ID下，维度错误发生时执行

# --- 关卡ID ---
scoreboard players set level data -15

# --- 物品操作 ---

## 清除物品
clear @s
## 给予物品
give @s wstd:next_step

# --- 传送玩家 ---
execute in nether run tp @s -2 12 -5

# --- 提示玩家 ---

## 聊天栏
tellraw @s {"rawtext":[{"translate":"chat.error.invalid_level_id.nether","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}