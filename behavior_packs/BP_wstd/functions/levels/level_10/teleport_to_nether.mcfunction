# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 10
# 启动时间线
## 仅对需要某些[延时]特殊需求的关卡添加，如果此关卡没有什么特殊需求，请移除“启动时间线”命令组
function system/enable_timeline

## 以下来自所有关卡通用函数的启动程序（levels/all_levels/start_game），但有删改
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
# 标题时间预设
titleraw @a times 0 60 0
# 提醒玩家开发者模式下部分命令执行失败
execute @e[name=developerMode,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.developer_mode.run_command_failed"}]}

## 传送到下界
tp @a[scores={dimension=0}] @e[family=marker,family=nether]