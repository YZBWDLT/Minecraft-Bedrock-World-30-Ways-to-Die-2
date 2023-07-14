# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 7

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_7"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_7"}]}

# 复制房间
structure load level_7 13 20 68

# 传送玩家
tp @a 21 22 76 facing 14 22 69

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 召唤标记实体（判断是否在主世界死亡）
kill @e[name=diedInOverworld]
summon je:marker "diedInOverworld" 0 3 0

# 启动时间线
function system/enable_timeline_without_flowing

# 启用通关延迟
function system/enable_level_complete_delay