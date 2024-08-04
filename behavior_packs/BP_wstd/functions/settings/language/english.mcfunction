# ===== 语言：英文 =====

# --- 检测玩家客户端 ---
function lib/get_data/client

# --- 如果是网易版本，阻止之 ---
execute if score isNetease data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.error.is_netease_version"}]}

# --- 如果不是网易版本，设置语言状态并提示 ---

## 设置语言状态
execute if score isNetease data matches 0 run scoreboard players set language settings 1

## 聊天栏
execute if score isNetease data matches 0 run tellraw @a {"rawtext":[{"text":"§bThe game has been set to English. Please switch your game language to English to prevent a mixture of Chinese and English."}]}

## 音效
execute if score isNetease data matches 0 run function lib/modify_states/sound/random_orb_1
