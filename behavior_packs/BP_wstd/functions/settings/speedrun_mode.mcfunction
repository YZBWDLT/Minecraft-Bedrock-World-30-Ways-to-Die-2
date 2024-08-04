# ===== 速通模式 =====

# --- 设置状态 ---

scoreboard players add speedrunMode settings 1
execute if score speedrunMode settings matches !0..1 run scoreboard players set speedrunMode settings 0

# --- 提示 ---

## 聊天栏
execute if score speedrunMode settings matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.speedrun_mode.disabled"}]}
execute if score speedrunMode settings matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.settings.speedrun_mode.enabled"}]}

## 音效
function lib/modify_states/sound/random_pop

## 音乐
function lib/modify_states/music/maingame

# --- 速通模式下，锁定困难 ---

## 更新提示、攻略、跳过启用状态
execute if score speedrunMode settings matches 1 run scoreboard players set hintEnabled settings 0
execute if score speedrunMode settings matches 1 run scoreboard players set strategyEnabled settings 0
execute if score speedrunMode settings matches 1 run scoreboard players set skipEnabled settings 0

## 更新记分板为困难难度
execute if score speedrunMode settings matches 1 run function lib/scoreboard/difficulty

## 关闭第30关对话
execute if score speedrunMode settings matches 1 run scoreboard players set level30Dialogue settings 0
