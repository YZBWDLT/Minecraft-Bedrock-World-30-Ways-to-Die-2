# 关卡完成

# 自定义死亡信息
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.level_23","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a -13 10 27 facing -13 10 24

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl23Hint,scores={stats=0}] ~~~ kill @s
execute @e[name=lvl23Strategy,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 设置下一关的提示攻略检测并初始化
execute @e[name=levelAdvancement,scores={stats=22}] ~~~ summon je:marker "lvl24Hint" 0 2 0
execute @e[name=levelAdvancement,scores={stats=22}] ~~~ summon je:marker "lvl24Strategy" 0 2 0
execute @e[name=levelAdvancement,scores={stats=22}] ~~~ scoreboard players set @e[name=lvl24Hint] stats 0
execute @e[name=levelAdvancement,scores={stats=22}] ~~~ scoreboard players set @e[name=lvl24Strategy] stats 0
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=22}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 23

# 关卡结束通用函数
function levels/all_levels/level_completed