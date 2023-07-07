# 进度中心

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -12

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a -97 20 16 facing -120 20 16

# ===== 标题 =====
titleraw @a times 0 60 0
titleraw @a title {"rawtext":[{"translate":"title.advancement_center"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.advancement_center"}]}

# ===== 显示大厅显示文本 =====
function halls/advancement_center/text_display

# ===== 加载展示框 =====
function halls/advancement_center/load_data