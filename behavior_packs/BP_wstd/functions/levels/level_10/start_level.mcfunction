# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 10

# 调用所有关卡通用函数
# 更改标题时间
title @a times 0 60 0
# 调整游戏模式
execute @e[name=developerMode,scores={settings=0}] ~~~ gamemode adventure @a
# 清除物品
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a
execute @e[name=developerMode,scores={settings=1}] ~~~ function developer/clear_items
# 清除掉落物与多余实体
kill @e[type=item]
kill @e[type=!player,family=!marker,type=!ender_dragon]
# 清除玩家药效
effect @a clear
# 恢复玩家血量
effect @a instant_health 1 255 true
## 音效 | random.orb, 2
scoreboard players set @e[name=soundPlayer] active 2
# 给予辅助功能物品 - 视情况给予，未开启的辅助功能不给予
give @a wstd:reset 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
give @a wstd:quit 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
# 标题时间预设
titleraw @a times 0 60 0
# 提醒玩家开发者模式下部分命令执行失败
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.developer_mode.run_command_failed"}]}

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_10"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_10"}]}

# 复制房间
structure load level_10 29 12 -21

# 传送玩家
tp @a 38 15 -12 facing 32 15 -18

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 启动时间线
function system/enable_timeline

# 启用通关延迟
function system/enable_level_complete_delay

# 启动物品检测
scoreboard players set @e[name=itemTester1] active 2

# 给予防火
effect @a fire_resistance 100000 0 true