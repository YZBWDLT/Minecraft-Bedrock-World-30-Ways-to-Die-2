# ===== 第30关对话设定 =====

# --- 调用设置 ---
function settings/level_30_dialogue

# --- 重新处理展示文本 ---
execute if score language data matches 0 run function halls/settings/miscellaneous/text_display/chinese
execute if score language data matches 1 run function halls/settings/miscellaneous/text_display/english

# --- 将玩家传送出检测区 ---
tp @s -100 19 46
