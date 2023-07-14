# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 45

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_5"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_5"}]}

# 复制房间
structure load easter_egg_5 -10 20 -30

# 传送玩家
tp @a -2 22 -22 facing -9 22 -29

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline_without_flowing

# 启动物品检测
scoreboard players set @e[name=itemTester1] active 2
scoreboard players set @e[name=itemTester2] active 2
