# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 46

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_6"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_6"}]}

# 复制房间
structure load easter_egg_6 5 20 -50

# 传送玩家
tp @a 13 22 -42 facing 6 22 -49

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 展示文本
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b唯有岩浆可以破除你的不死图腾诅咒" 6 22 -45
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§bOnly lava breaks the totem curse" 6 22 -45

# 启动时间线
function system/enable_timeline
