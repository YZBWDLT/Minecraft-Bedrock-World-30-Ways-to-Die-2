## 设置关卡ID为-13
scoreboard players set @e[name=level] backend -13
## 激活时间线
function system/enable_timeline
# 清除多余实体
kill @e[type=!player,family=!marker,type=!ender_dragon]
# 设置标题时间
titleraw @a times 0 60 0
# 防止玩家开启别的关卡
fill -31 0 29 -31 0 25 minecraft:border_block
fill -31 0 25 -39 0 25 minecraft:border_block
fill -31 0 29 -39 0 29 minecraft:border_block
# 清除玩家的物品
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a