# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 22

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_22"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_22"}]}

# 复制房间
structure load level_22 10 20 92

# 传送玩家
tp @a 18 22 100 facing 11 22 93

# 给予辅助功能物品
execute @e[name=skipEnabled,scores={settings=1}] ~~~ give @a wstd:skip 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 展示文本
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§6灰常简单的啦~(￣▽￣)" 16 21 96
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§7别把没用的东西都拿光了，别怪我没提醒你（" 16 20.7 96

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§6Pretty easy~(￣▽￣)" 16 21 96
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§7Don't take all useless things" 16 20.7 96
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§7don't blame that I didn't remind you(" 16 20.4 96

# 启用隐藏关卡检测
function system/enable_timeline_without_flowing
