# 关卡完成

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl31Skip,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 设置下一关的提示攻略检测并初始化
execute @e[name=levelAdvancement,scores={stats=13}] ~~~ summon je:marker "lvl32Skip" 0 2 0
execute @e[name=levelAdvancement,scores={stats=13}] ~~~ scoreboard players set @e[name=lvl32Skip] stats 0
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=13}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 31

# 开启下一关
function levels/level_13/part_3/start_level