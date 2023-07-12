# 设置大厅

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -10

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a -97 20 46 facing -109 20 46

# ===== 标题 =====
titleraw @a times 0 60 0
titleraw @a title {"rawtext":[{"translate":"title.setting_center"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.setting_center"}]}

# ===== 显示大厅显示文本 =====
function halls/setting_center/text_display

# ===== 启用时间线 =====
function system/enable_timeline_without_flowing

# ===== 复制展示框 =====
clone -98 16 49 -109 16 43 -109 21 43