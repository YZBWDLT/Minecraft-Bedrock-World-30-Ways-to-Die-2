# ===== 开始游戏 =====
# 在特定关卡ID下，维度错误发生时执行

# --- 关卡ID ---
scoreboard players set level data -15

# --- 物品操作 ---

## 清除物品
clear @s
## 给予物品
give @a[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @a[hasitem={item=wstd:play_music,quantity=0}] wstd:play_music 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 传送玩家 ---
execute in nether run tp @s -2 12 -5

# --- 提示玩家 ---

## 聊天栏
tellraw @s {"rawtext":[{"translate":"chat.error.invalid_level_id.nether","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}