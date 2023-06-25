# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 32

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"§1"}]}
titleraw @a subtitle {"rawtext":[{"translate":"title.level_13.part_3"}]}

# 复制房间
structure load level_13_3 -54 20 55

# 传送玩家
tp @a -46 22 63 facing -53 22 59

# 给予辅助功能物品
execute @e[name=skipEnabled,scores={settings=1}] ~~~ give @a wstd:skip 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline

# 启用通关延迟
function system/enable_level_complete_delay

# 展示文本
summon wstd:text_display "§6让红石灯亮起来！" -46 22 55
summon wstd:text_display "§a左侧频闪10次时，右侧红石灯就会亮起" -54 21 62.00

# 灯亮起次数初始化
scoreboard players set @e[name=counter] backend 0