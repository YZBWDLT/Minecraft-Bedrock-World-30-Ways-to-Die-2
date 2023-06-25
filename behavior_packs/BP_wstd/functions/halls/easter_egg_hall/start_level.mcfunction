# 彩蛋大厅

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -2

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a -22 10 5 facing -40 10 5

# ===== 标题 =====
titleraw @a times 0 60 0
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_hall"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_hall"}]}

# ===== 显示大厅显示文本 =====
function halls/easter_egg_hall/text_display