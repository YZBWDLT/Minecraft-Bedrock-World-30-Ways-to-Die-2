# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 9

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_9"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_9"}]}

# 复制房间
structure load level_9 -40 20 68

# 传送玩家
tp @a -32 22 76 facing -39 22 69

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline_without_flowing

# 启动物品检测
scoreboard players set @e[name=itemTester1] active 2

# 给予防火
effect @a fire_resistance 100000 0 true