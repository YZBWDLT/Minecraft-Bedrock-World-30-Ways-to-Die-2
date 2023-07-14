# 第20关结束

# 自定义死亡信息
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_20","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a -1 10 27 facing -1 10 24

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl20Skip,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 设置下一关的提示攻略检测并初始化
execute @e[name=levelAdvancement,scores={stats=19}] ~~~ summon je:marker "lvl21Skip" 0 2 0
execute @e[name=levelAdvancement,scores={stats=19}] ~~~ scoreboard players set @e[name=lvl21Skip] stats 0
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=19}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 20

function system/disable_timeline
scoreboard players set @e[name=skipUsed] backend 0
function levels/all_levels/level_completed