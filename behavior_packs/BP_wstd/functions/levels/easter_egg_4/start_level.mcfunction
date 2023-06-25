# 启动与重启函数

scoreboard players set @e[name=counter] backend 0

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 44

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_4"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_4"}]}

# 复制房间
structure load easter_egg_4 -25 20 -50

# 传送玩家
tp @a -17 22 -45 facing -24 22 -45

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 显示文本
summon wstd:text_display "§6你觉得这张地图怎么样？" -22 21.7 -45
summon wstd:text_display "§a挺好的awa" -23 22.0 -43
summon wstd:text_display "§a挺好的awa" -23 22.0 -47
summon wstd:text_display "§7也就那样吧，平凡之至" -16 22.0 -49

# 启动时间线
function system/enable_timeline_without_flowing
