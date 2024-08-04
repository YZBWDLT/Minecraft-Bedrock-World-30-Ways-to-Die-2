# ===== 第30关对话 =====

# --- 第29关结束前 ---
# 为播放第30关的启用音效，因此在0和2之间进行切换

## 状态调整
execute unless score progress.level record matches 29..30 run scoreboard players add level30Dialogue settings 2
execute unless score progress.level record matches 29..30 if score level30Dialogue settings matches !0..2 run scoreboard players set level30Dialogue settings 0

## 启用后提示 | 聊天栏&音效提示
execute unless score progress.level record matches 29..30 if score level30Dialogue settings matches 0 run tellraw @a {"rawtext":[{"translate":"chat.settings.level_30_dialogue.disabled"}]}
execute unless score progress.level record matches 29..30 if score level30Dialogue settings matches 0 run function lib/modify_states/sound/mob_villager_no

## 禁用后提示 | 聊天栏&音效提示
execute unless score progress.level record matches 29..30 if score level30Dialogue settings matches 2 run tellraw @a {"rawtext":[{"translate":"chat.settings.level_30_dialogue.enabled"}]}
execute unless score progress.level record matches 29..30 if score level30Dialogue settings matches 2 run function lib/modify_states/sound/mob_villager_yes

# --- 第29关结束后 ---

## 状态调整
execute if score progress.level record matches 29..30 run scoreboard players add level30Dialogue settings 1
execute if score progress.level record matches 29..30 if score level30Dialogue settings matches !0..1 run scoreboard players set level30Dialogue settings 0

## 启用后提示 | 聊天栏&音效提示
execute unless score progress.level record matches 29..30 if score level30Dialogue settings matches 0 run tellraw @a {"rawtext":[{"translate":"chat.settings.level_30_dialogue.disabled"}]}
execute unless score progress.level record matches 29..30 if score level30Dialogue settings matches 0 run function lib/modify_states/sound/mob_villager_no

## 禁用后提示 | 聊天栏&音效提示
execute unless score progress.level record matches 29..30 if score level30Dialogue settings matches 1 run tellraw @a {"rawtext":[{"translate":"chat.settings.level_30_dialogue.enabled"}]}
execute unless score progress.level record matches 29..30 if score level30Dialogue settings matches 1 run function lib/modify_states/sound/mob_villager_yes
