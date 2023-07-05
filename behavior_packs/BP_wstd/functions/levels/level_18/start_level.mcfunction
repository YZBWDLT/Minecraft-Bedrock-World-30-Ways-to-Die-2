# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 18

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_18"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_18"}]}

# 复制房间
structure load level_18 -28 20 80

# 传送玩家
tp @a -20 22 88 facing -27 22 81

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline
# 初始化（玩家在未掉下去的时候是0）
scoreboard players set @e[name=counter] backend 0
# 生成展示文本
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "提示：你有饱和效果哦~" -26 21 85
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "You are getting saturation effect~" -26 21 85