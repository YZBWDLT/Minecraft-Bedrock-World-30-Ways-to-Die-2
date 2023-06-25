# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 5

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_5"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_5"}]}

# 复制房间
structure load level_5 -66 20 43

# 传送玩家
tp @a -64 22 45 facing -57 22 52

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}