# ===== 语言与版本检测 =====

# --- 重新检测版本与语言 ---

function lib/get_data/client
function lib/get_data/language

# --- 重新处理展示文本 ---
execute if score language settings matches 0 run function halls/settings/advanced/text_display/chinese
execute if score language settings matches 1 run function halls/settings/advanced/text_display/english

# --- 音效 ---

function lib/modify_states/sound/random_pop

# --- 将玩家传送出检测区 ---
tp @s -108 19 46
