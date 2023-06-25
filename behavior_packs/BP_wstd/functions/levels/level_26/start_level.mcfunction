# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 26

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_26"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_26"}]}

# 复制房间
structure load level_26 49 20 104

# 传送玩家
tp @a 57 22 112 facing 50 22 105

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启用时间线
function system/enable_timeline
# 启动物品检测
scoreboard players set @e[name=itemTester1] active 2

# 展示文本
summon wstd:text_display "致1.20.10或更高版本玩家：熟悉的配方还在" 54 21 112.7