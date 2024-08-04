# ===== 难度：非常简单 =====

# --- 调用设置 ---
function settings/difficulty/very_easy

# --- 重新处理展示文本 ---
execute if score language settings matches 0 run function halls/settings/diff_and_lang/text_display/chinese
execute if score language settings matches 1 run function halls/settings/diff_and_lang/text_display/english

# --- 将玩家传送出检测区 ---
tp @s -98 19 46
