# 关卡完成

# 自定义死亡信息
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_30","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a -35 10 27 facing -50 10 27

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl30Skip,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=29}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 30

function system/disable_timeline
scoreboard players set @e[name=skipUsed] backend 0
function levels/all_levels/level_completed