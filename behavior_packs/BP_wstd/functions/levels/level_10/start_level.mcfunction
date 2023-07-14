# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 10

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_10"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_10"}]}

# 复制房间
structure load level_10 29 12 -21

# 传送玩家
tp @a 38 15 -12 facing 32 15 -18

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline_without_flowing

# 启用通关延迟
function system/enable_level_complete_delay

# 启动物品检测
scoreboard players set @e[name=itemTester1] active 2

# 给予防火
effect @a fire_resistance 100000 0 true