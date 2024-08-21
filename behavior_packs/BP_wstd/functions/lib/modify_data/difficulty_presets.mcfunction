# ===== 难度预设 =====
# 当三项辅助功能为特定设置时，使用预设的难度

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 当提示、攻略、跳过启用状态分别为以下值时，使用预设难度：111-非常简单；101-简单；001-普通；000-困难

# --- 111 ---
execute if score hintEnabled settings matches 1 if score strategyEnabled settings matches 1 if score skipEnabled settings matches 1 run function settings/difficulty/very_easy

# --- 101 ---
execute if score hintEnabled settings matches 1 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 1 run function settings/difficulty/easy

# --- 001 ---
execute if score hintEnabled settings matches 0 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 1 run function settings/difficulty/normal

# --- 000 ---
execute if score hintEnabled settings matches 0 if score strategyEnabled settings matches 0 if score skipEnabled settings matches 0 run function settings/difficulty/hard
