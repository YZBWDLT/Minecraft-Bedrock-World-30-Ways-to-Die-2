# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 42

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_2"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_2"}]}

# 复制房间
structure load easter_egg_2 -70 20 -30

# 传送玩家
tp @a -62 22 -22 facing -69 22 -29

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 显示文本
summon wstd:text_display "§6接下来你要回答5个关于MC的问题！" -67 22.0 -25
summon wstd:text_display "§6准备好了吗？awa" -67 21.7 -25
summon wstd:text_display "§aAye, aye, captain! " -68 22.3 -23
summon wstd:text_display "§cNO!!! LEAVE ME ALONE!!! " -68 22.3 -27

# 设置问题为0
scoreboard players set @e[name=counter] backend 0

# 启动时间线
function system/enable_timeline_without_flowing
