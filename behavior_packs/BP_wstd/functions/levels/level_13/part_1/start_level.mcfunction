# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 13

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_13"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_13"}]}

# 复制房间
structure load level_13_1 -2 20 55

# 传送玩家
tp @a 6 22 63 facing 0 22 57

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=skipEnabled,scores={settings=1}] ~~~ give @a wstd:skip 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline_without_flowing

# 展示文本
summon wstd:text_display "§6让红石灯亮起来！" 3 22 64
