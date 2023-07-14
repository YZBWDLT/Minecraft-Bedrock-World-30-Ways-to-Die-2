# 关卡完成

# 自定义死亡信息
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.deathmessage.time_limited_5","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a -60 10 5 facing -64 10 5

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=timeLimitedAdvancement,scores={stats=39}] ~~~ scoreboard players set @e[name=timeLimitedAdvancement] stats 40

# 关卡结束通用函数
function levels/all_levels/level_completed

function system/disable_timeline

# 关闭检测器 | 因为旧版语法限制，必须用命令方块代替
fill 13 5 7 13 5 12 air

# 信标与结束语
execute @e[name=timeLimitedAdvancement,scores={stats=40}] ~~~ detect -45 9 28 glass -1 setblock -45 9 28 beacon
execute @e[name=timeLimitedAdvancement,scores={stats=40}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.completed.time_limited_levels"}]}