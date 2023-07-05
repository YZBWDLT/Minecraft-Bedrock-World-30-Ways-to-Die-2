# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 31

# 调用所有关卡通用函数
function levels/all_levels/start_level
kill @e[type=item]

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"§1"}]}
titleraw @a subtitle {"rawtext":[{"translate":"title.level_13.part_2"}]}

# 复制房间
structure load level_13_2 -28 20 55

# 传送玩家
tp @a -20 22 63 facing -26 22 57

# 给予辅助功能物品
execute @e[name=skipEnabled,scores={settings=1}] ~~~ give @a wstd:skip 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline

# 启动物品检测
scoreboard players set @e[name=itemTester1] active 2

# 展示文本
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§6让红石灯亮起来！" -27 26 59
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§6Make the lamp light up!" -27 26 59
