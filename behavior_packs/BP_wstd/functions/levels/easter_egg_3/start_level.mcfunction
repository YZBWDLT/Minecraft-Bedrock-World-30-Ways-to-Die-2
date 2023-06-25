# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 43

# 调用所有关卡通用函数
function levels/all_levels/start_level

scoreboard players set @e[name=counter] backend 0

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_3"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_3"}]}

# 复制房间
structure load easter_egg_3 -55 20 -50
structure load easter_egg_3_1 -95 8 -53

# 传送玩家
tp @a -47 22 -42 facing -54 22 -49

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline_without_flowing

