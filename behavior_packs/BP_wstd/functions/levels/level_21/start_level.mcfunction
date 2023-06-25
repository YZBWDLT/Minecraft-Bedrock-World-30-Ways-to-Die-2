# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 21

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_21"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_21"}]}

# 复制房间
structure load level_21 37 20 92

# 传送玩家
tp @a 45 22 100 facing 38 22 93

# 给予辅助功能物品
execute @e[name=skipEnabled,scores={settings=1}] ~~~ give @a wstd:skip 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 展示文本
summon wstd:text_display "§a从这儿开始，祝你好运(*^▽^*)" 37 22 95
summon wstd:text_display "§b拉下拉杆，设置重生点" 44 25 92
summon wstd:text_display "§b拉下拉杆，设置重生点" 39 27 102