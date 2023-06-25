# 大厅

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend 0

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a 27 10 27 facing 0 10 27

# ===== 标题 =====
titleraw @a times 0 60 0
titleraw @a title {"rawtext":[{"translate":"title.hall"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.hall"}]}

# ===== 显示大厅显示文本 =====
function halls/main_hall/text_display

scoreboard players set @e[name=remainingTime] time 10