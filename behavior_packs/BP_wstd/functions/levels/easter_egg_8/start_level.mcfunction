# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 48

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 限时设定
scoreboard players set @e[name=remainingTime] time 180

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_8"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_8"}]}
function system/music/play_timelimit

# 复制房间
structure load easter_egg_8 -10 20 -70
structure load easter_egg_8_1 -3 10 -69

# 传送玩家
tp @a -2 22 -68 facing -9 22 -61

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline

function system/enable_level_complete_delay

execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c效率附魔已失效，加油！" -2 20.5 -62
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§cNo efficiency enchant this level, come on!" -2 20.5 -62