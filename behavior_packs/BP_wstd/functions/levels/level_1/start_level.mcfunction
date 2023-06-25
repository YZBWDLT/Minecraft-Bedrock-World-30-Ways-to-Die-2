# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 1

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_1"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_1"}]}

# 复制房间
structure load level_1 39 20 43

# 传送玩家
tp @a 47 22 51 facing 40 22 51

# 给予辅助功能物品
## 当玩家启用这些功能时才能给予
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}