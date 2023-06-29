# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 36

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 限时设定
scoreboard players set @e[name=remainingTime] time 550

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.time_limited_1"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_1"}]}

# 复制房间
structure load time_limited_1 -55 20 -80

# 传送玩家
tp @a -47 22 -75 facing -54 22 -75

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
give @a wstd:next_step 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline

# 给予药效
effect @a resistance 999999 9 true

summon wstd:text_display "§b用侦测器、弩、脚手架、皮革马铠和磁石" -50 21.2 -78
summon wstd:text_display "§b合成一个跳过以通过这关，祝你好运:)" -50 20.9 -78
summon wstd:text_display "§c提示：使用下一步以重置所有资源" -50 20.6 -78