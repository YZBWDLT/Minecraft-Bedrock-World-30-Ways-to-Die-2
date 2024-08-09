# ===== 语言：中文 =====

# --- 调用设置 ---
function settings/language/chinese

# --- 重新处理展示文本 ---
execute if score language settings matches 0 run function halls/settings/difficulty/text_display/chinese
execute if score language settings matches 1 run function halls/settings/difficulty/text_display/english

# --- 将玩家传送出检测区 ---
tp @s -108 19 46
