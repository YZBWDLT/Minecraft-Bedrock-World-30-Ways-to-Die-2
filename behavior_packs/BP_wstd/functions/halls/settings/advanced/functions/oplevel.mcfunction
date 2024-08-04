# ===== 更改权限等级 =====

# --- 调用设置 ---
function settings/oplevel

# --- 重新处理展示文本 ---
execute if score language settings matches 0 run function halls/settings/advanced/text_display/chinese
execute if score language settings matches 1 run function halls/settings/advanced/text_display/english

# --- 将玩家传送出检测区 ---
tp @s -98 19 46
