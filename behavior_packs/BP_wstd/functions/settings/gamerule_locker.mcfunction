# ===== 游戏规则限制 =====

# --- 设置状态 ---

scoreboard players add gameruleLock settings 1
execute if score gameruleLock settings matches !0..1 run scoreboard players set gameruleLock settings 0

# --- 提示 ---

## 若锁定后 | 提示并播放音效
execute if score gameruleLock settings matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.gamerule.locked"}]}
execute if score gameruleLock settings matches 1 run function lib/modify_states/sound/mob_villager_yes

## 若未锁定 | 提示并播放音效
execute if score gameruleLock settings matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.gamerule.unlocked"}]}
execute if score gameruleLock settings matches 0 run function lib/modify_states/sound/mob_villager_no
