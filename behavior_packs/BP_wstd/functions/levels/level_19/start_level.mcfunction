# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 19

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_19"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_19"}]}

# 复制房间
structure load level_19 -54 20 80

# 传送玩家
tp @a -46 22 88 facing -53 22 81

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}