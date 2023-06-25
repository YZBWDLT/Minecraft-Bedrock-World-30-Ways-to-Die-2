# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 20

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_20"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_20"}]}

# 复制房间
structure load level_20 -81 20 80

# 传送玩家
tp @a -72 22 87 facing -80 22 81

# 给予辅助功能物品
execute @e[name=skipEnabled,scores={settings=1}] ~~~ give @a wstd:skip 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 添加防火
effect @a fire_resistance 100000 0 true

# 启用时间线
function system/enable_timeline

# 启用通关延迟
function system/enable_level_complete_delay

# 启动物品检测
scoreboard players set @e[name=itemTester1] active 2
scoreboard players set @e[name=itemTester2] active 2
scoreboard players set @e[name=itemTester3] active 2

summon wstd:text_display "§b超级丰厚的奖励箱！φ(゜▽゜*)♪" -73 22 82
summon wstd:text_display "§d水可以\"破坏\"下界门(～￣▽￣)～" -75 23 88.0

scoreboard players set @e[name=skipUsed] backend 0