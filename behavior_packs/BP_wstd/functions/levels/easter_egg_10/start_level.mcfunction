# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 50

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_10"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_10"}]}

# 复制房间
structure load easter_egg_10 35 77 -50
structure load easter_egg_10_1 22 10 -50 0_degrees none layer_by_layer 5.00
# 传送玩家
tp @a 43 79 -45 facing 23 79 -45

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline_without_flowing
