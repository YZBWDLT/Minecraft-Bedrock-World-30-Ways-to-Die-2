# ===== 恢复所有设置为默认 =====

# --- 调用设置 ---
function settings/reset_settings

# --- 重新处理展示文本 ---
execute if score language settings matches 0 run function halls/settings/main/text_display/chinese
execute if score language settings matches 1 run function halls/settings/main/text_display/english

# --- 将玩家传送出检测区 ---
tp @s -106 19 46