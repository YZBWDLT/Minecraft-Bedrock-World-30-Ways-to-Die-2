# DIY大厅

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -1

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a -22 10 -10 facing -40 10 -10

# ===== 标题 =====
titleraw @a times 0 60 0
titleraw @a title {"rawtext":[{"translate":"title.diy_hall"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.diy_hall"}]}

# ===== 显示大厅显示文本 =====
function halls/diy_hall/text_display

# ===== 当玩家在backend上有分数时，一律取消 =====
scoreboard players reset @a backend