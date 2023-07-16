# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 38

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 限时设定
scoreboard players set @e[name=remainingTime] time 60

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.time_limited_3"}]}
execute @e[name=isNetease,scores={settings=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_3"}]}
execute @e[name=isNetease,scores={settings=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"netease.subtitle.time_limited_3"}]}

# 复制房间
structure load time_limited_3 5 20 -100

# 传送玩家
tp @a 13 22 -82 facing 6 22 -99

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
give @a wstd:next_step 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b使用下一步以生成鸡" 10 21.5 -82
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bUse Next to summon a chicken" 10 21.5 -82