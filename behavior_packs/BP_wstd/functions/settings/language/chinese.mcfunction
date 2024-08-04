# ===== 语言：中文 =====

# --- 设置语言状态 ---
scoreboard players set language settings 0

# --- 提示 ---

## 聊天栏
tellraw @a {"rawtext":[{"text":"§b游戏已设置成中文，请将您的游戏语言也调为中文，防止中英文混杂情况产生。"}]}

## 音效
function lib/modify_states/sound/random_orb_1
