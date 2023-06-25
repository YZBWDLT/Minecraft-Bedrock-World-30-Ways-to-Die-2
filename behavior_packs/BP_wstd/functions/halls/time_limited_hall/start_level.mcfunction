# 限时大厅

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -3

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a -55 10 5 facing -62 10 5

# ===== 标题 =====
titleraw @a times 0 60 0
titleraw @a title {"rawtext":[{"translate":"title.time_limited_hall"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_hall"}]}

# ===== 显示大厅显示文本 =====
function halls/time_limited_hall/text_display
