# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 11

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_11"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_11"}]}

# 复制房间
execute @e[name=language,scores={settings=0}] ~~~ structure load level_11 51 20 55
execute @e[name=language,scores={settings=1}] ~~~ structure load level_11_en 51 20 55

# 传送玩家
tp @a 59 22 63 facing 52 22 56

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline
