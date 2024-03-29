# 第1关结束

# 自定义死亡信息
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_11","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a -25 10 27 facing -25 10 30

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl11Hint,scores={stats=0}] ~~~ kill @s
execute @e[name=lvl11Strategy,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 设置下一关的提示攻略检测并初始化
execute @e[name=levelAdvancement,scores={stats=10}] ~~~ summon je:marker "lvl12Hint" 0 2 0
execute @e[name=levelAdvancement,scores={stats=10}] ~~~ summon je:marker "lvl12Strategy" 0 2 0
execute @e[name=levelAdvancement,scores={stats=10}] ~~~ scoreboard players set @e[name=lvl12Hint] stats 0
execute @e[name=levelAdvancement,scores={stats=10}] ~~~ scoreboard players set @e[name=lvl12Strategy] stats 0
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=10}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 11

# 关卡结束通用函数
function levels/all_levels/level_completed

# 结束时间线
function system/disable_timeline