# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 37

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 限时设定
scoreboard players set @e[name=remainingTime] time 75

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.time_limited_2"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_2"}]}

# 复制房间
structure load time_limited_2 -40 20 -90

# 传送玩家
tp @a -32 22 -82 facing -39 22 -89

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 展示文本
summon wstd:text_display "§b从这儿开始，祝你好运！o((>ω< ))o" -38 22.0 -84

# 启动时间线
function system/enable_timeline