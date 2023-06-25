# 关卡完成

# 自定义死亡信息
execute @e[name=skipUsed,scores={backend=0}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.level_13","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=skipUsed,scores={backend=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.level_13.skip_used","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a -33 10 27 facing -33 10 30

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl32Skip,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 设置下一关的提示攻略检测并初始化
execute @e[name=levelAdvancement,scores={stats=31}] ~~~ summon je:marker "lvl14Hint" 0 2 0
execute @e[name=levelAdvancement,scores={stats=31}] ~~~ summon je:marker "lvl14Strategy" 0 2 0
execute @e[name=levelAdvancement,scores={stats=31}] ~~~ scoreboard players set @e[name=lvl14Hint] stats 0
execute @e[name=levelAdvancement,scores={stats=31}] ~~~ scoreboard players set @e[name=lvl14Strategy] stats 0
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=31}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 32

# 重置backend.skipUsed
scoreboard players set @e[name=skipUsed] backend 0

# 关闭时间线
function system/disable_timeline

# 关卡结束通用函数
function levels/all_levels/level_completed