# 第3关结束

# 自定义死亡信息
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_3","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a 7 10 27 facing 7 10 30

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl3Hint,scores={stats=0}] ~~~ kill @s
execute @e[name=lvl3Strategy,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 设置下一关的提示攻略检测并初始化
execute @e[name=levelAdvancement,scores={stats=2}] ~~~ summon je:marker "lvl4Hint" 0 2 0
execute @e[name=levelAdvancement,scores={stats=2}] ~~~ summon je:marker "lvl4Strategy" 0 2 0
execute @e[name=levelAdvancement,scores={stats=2}] ~~~ scoreboard players set @e[name=lvl4Hint] stats 0
execute @e[name=levelAdvancement,scores={stats=2}] ~~~ scoreboard players set @e[name=lvl4Strategy] stats 0
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=2}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 3

# 关卡结束通用函数
function levels/all_levels/level_completed