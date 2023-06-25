# 第12关结束

# 自定义死亡信息
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.level_12","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a -29 10 27 facing -29 10 30

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl12Hint,scores={stats=0}] ~~~ kill @s
execute @e[name=lvl12Strategy,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 设置下一关的跳过检测并初始化
execute @e[name=levelAdvancement,scores={stats=11}] ~~~ summon je:marker "lvl13Hint" 0 2 0
execute @e[name=levelAdvancement,scores={stats=11}] ~~~ scoreboard players set @e[name=lvl13Hint] stats 0
execute @e[name=levelAdvancement,scores={stats=11}] ~~~ summon je:marker "lvl13Strategy" 0 2 0
execute @e[name=levelAdvancement,scores={stats=11}] ~~~ scoreboard players set @e[name=lvl13Strategy] stats 0
execute @e[name=levelAdvancement,scores={stats=11}] ~~~ summon je:marker "lvl13Skip" 0 2 0
execute @e[name=levelAdvancement,scores={stats=11}] ~~~ scoreboard players set @e[name=lvl13Skip] stats 0
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=11}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 12

# 关卡结束通用函数
function levels/all_levels/level_completed