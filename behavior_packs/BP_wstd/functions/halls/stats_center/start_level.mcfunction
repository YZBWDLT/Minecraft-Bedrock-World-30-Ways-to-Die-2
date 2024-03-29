# 统计中心

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -11

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a -100 20 30 facing -95 20 30

# ===== 标题 =====
titleraw @a times 0 60 0
titleraw @a title {"rawtext":[{"translate":"title.stats_center"}]}
execute @e[name=isNetease,scores={settings=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.stats_center"}]}
execute @e[name=isNetease,scores={settings=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"netease.subtitle.stats_center"}]}

# ===== 显示大厅显示文本 =====
function halls/stats_center/text_display

# ===== 加载统计数据 =====
function halls/stats_center/load_data