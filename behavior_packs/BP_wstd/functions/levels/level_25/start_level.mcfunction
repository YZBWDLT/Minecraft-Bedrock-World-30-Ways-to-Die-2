# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 25

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_25"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_25"}]}

# 复制房间
structure load level_25 -69 20 92

# 传送玩家
tp @a -61 22 100 facing -68 22 93

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 给予药效
effect @a water_breathing 100000 0 true

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "摔落伤害已开启" -62 21 97
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "fall damage is now on" -62 21 97