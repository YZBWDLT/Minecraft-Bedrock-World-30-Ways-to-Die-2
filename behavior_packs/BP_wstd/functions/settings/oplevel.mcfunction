# ===== 权限等级 =====

# --- 状态调整 ---

scoreboard players add oplevel settings 1
execute if score oplevel settings matches !0..2 run scoreboard players set oplevel settings 0

# --- 提示 ---

## 聊天栏
tellraw @a {"rawtext":[{"translate":"chat.settings.oplevel","with":{"rawtext":[{"score":{"objective":"settings","name":"oplevel"}}]}}]}

## 音效
function lib/modify_states/sound/random_pop
