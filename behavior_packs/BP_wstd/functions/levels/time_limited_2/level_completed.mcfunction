# 关卡完成

# 自定义死亡信息
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.time_limited_2","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a -56 10 5 facing -56 10 1

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=timeLimitedAdvancement,scores={stats=36}] ~~~ scoreboard players set @e[name=timeLimitedAdvancement] stats 37

# 关卡结束通用函数
function levels/all_levels/level_completed

function system/disable_timeline