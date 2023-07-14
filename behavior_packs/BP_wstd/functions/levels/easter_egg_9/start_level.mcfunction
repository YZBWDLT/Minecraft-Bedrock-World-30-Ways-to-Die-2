# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 49

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_9"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_9"}]}

# 复制房间
execute @e[name=language,scores={settings=0}] ~~~ structure load easter_egg_9 20 20 -70
execute @e[name=language,scores={settings=1}] ~~~ structure load easter_egg_9_en 20 20 -70

# 传送玩家
tp @a 28 22 -62 facing 21 22 -69

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}