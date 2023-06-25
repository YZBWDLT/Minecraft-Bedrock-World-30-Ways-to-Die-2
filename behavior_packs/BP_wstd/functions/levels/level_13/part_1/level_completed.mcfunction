# 第1关结束

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl13Hint,scores={stats=0}] ~~~ kill @s
execute @e[name=lvl13Strategy,scores={stats=0}] ~~~ kill @s
execute @e[name=lvl13Skip,scores={stats=0}] ~~~ kill @s

# 设置下一关的辅助功能设定（只执行一次）
## 设置下一关的提示攻略检测并初始化
execute @e[name=levelAdvancement,scores={stats=12}] ~~~ summon je:marker "lvl31Skip" 0 2 0
execute @e[name=levelAdvancement,scores={stats=12}] ~~~ scoreboard players set @e[name=lvl31Skip] stats 0
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=12}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 13

# 开启下一关
function levels/level_13/part_2/start_level