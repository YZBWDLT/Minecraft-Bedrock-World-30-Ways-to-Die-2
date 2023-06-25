# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 24

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_24"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_24"}]}

# 复制房间
structure load level_24 -42 20 92

# 传送玩家
tp @a -34 22 100 facing -41 22 93

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启用时间线
function system/enable_timeline_without_flowing

# 展示文本
summon wstd:text_display "§3一片可以钓上大量河豚的神奇水池awa" -40 22 97

# 重新提供饱食度
effect @a saturation 1 255 true