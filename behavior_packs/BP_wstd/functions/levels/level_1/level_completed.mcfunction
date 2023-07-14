# 第1关结束

# 自定义死亡信息
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_1","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a 15 10 27 facing 15 10 30

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl1Hint,scores={stats=0}] ~~~ kill @s
execute @e[name=lvl1Strategy,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定(只执行一次)
## 设置下一关的提示攻略检测
execute @e[name=levelAdvancement,scores={stats=0}] ~~~ summon je:marker "lvl2Hint" 0 2 0
execute @e[name=levelAdvancement,scores={stats=0}] ~~~ summon je:marker "lvl2Strategy" 0 2 0
## 设置
execute @e[name=levelAdvancement,scores={stats=0}] ~~~ scoreboard players set @e[name=lvl2Hint] stats 0
execute @e[name=levelAdvancement,scores={stats=0}] ~~~ scoreboard players set @e[name=lvl2Strategy] stats 0
execute @e[name=levelAdvancement,scores={stats=0}] ~~~ scoreboard players add @e[name=levelAdvancement] stats 1

# 关卡结束通用函数
function levels/all_levels/level_completed