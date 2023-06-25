# 关于本地图

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -6

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a -97 20 46 facing -109 20 46

# ===== 展示文本 =====
function halls/difficulty_and_language/text_display

# ===== 复制展示框 =====
clone -98 13 49 -109 13 43 -109 21 43