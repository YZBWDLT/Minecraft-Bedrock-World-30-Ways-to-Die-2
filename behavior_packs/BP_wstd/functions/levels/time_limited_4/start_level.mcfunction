# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 39

# 调用所有关卡通用函数
function levels/all_levels/start_level

kill @e[name=entitySummoner]

# 限时设定
scoreboard players set @e[name=remainingTime] time 125

# 设置玩家的分数为0
scoreboard players set @e[name=counter] backend 0

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.time_limited_4"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_4"}]}

# 复制房间
structure load time_limited_4 -61 20 -103

# 传送玩家
tp @a -47 32 -89 facing -60 32 -102

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
give @a wstd:next_step 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline_without_flowing


# 展示文本
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§b§l游戏规则" -49 33.0 -101.9
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a把猪钓进去，钓进5只即可获胜！" -49 32.7 -101.9
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§c不要钓错了！猪灵和僵尸猪灵会害了你" -49 32.4 -101.9
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a在游戏时使用下一步以刷新生物" -49 32.1 -101.9
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§a刷新生物更有可能出现猪，但如果出现了其他东西，只能算你倒霉咯..." -49 31.8 -101.9
execute @e[name=language,scores={settings=0}] ~~~ summon wstd:text_display "§d游戏开始前使用下一步以开始游戏，祝你好运！" -49 31.5 -101.9

execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§b§lRULES" -49 33.0 -101.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aHook the pigs for a win! Catch 5 to triumph!" -49 32.7 -101.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§cBeware! Piglins and Zombie Piglins may harm you" -49 32.4 -101.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aUse \"Next\" to refresh the creatures in-game." -49 32.1 -101.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§aRefreshing is more likely to have pigs," -49 31.8 -101.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§abut beware of other surprises..." -49 31.5 -101.9
execute @e[name=language,scores={settings=1}] ~~~ summon wstd:text_display "§dUse \"Next\" to start out-of-game. Good luck!" -49 31.2 -101.9

fill -52 31 -103 -46 33 -103 quartz_block

# 生成点
summon je:marker "entitySummoner" -50 26 -98
summon je:marker "entitySummoner" -56 26 -98
summon je:marker "entitySummoner" -50 26 -92
summon je:marker "entitySummoner" -56 26 -92
scoreboard players set @e[name=entitySummoner] backend 1
