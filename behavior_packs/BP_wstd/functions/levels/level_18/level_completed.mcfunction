# 第18关结束

# 自定义死亡信息
execute @e[name=counter,scores={backend=0}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.level_18.blow_up","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=counter,scores={backend=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.level_18.void","with":{"rawtext":[{"selector":"@s"}]}}]}

# 结束时间线
function system/disable_timeline

# 传送到下一关入口
tp @a 7 10 27 facing 7 10 24

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl18Hint,scores={stats=0}] ~~~ kill @s
execute @e[name=lvl18Strategy,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 设置下一关的提示攻略检测并初始化
execute @e[name=levelAdvancement,scores={stats=17}] ~~~ summon je:marker "lvl19Hint" 0 2 0
execute @e[name=levelAdvancement,scores={stats=17}] ~~~ summon je:marker "lvl19Strategy" 0 2 0
execute @e[name=levelAdvancement,scores={stats=17}] ~~~ scoreboard players set @e[name=lvl19Hint] stats 0
execute @e[name=levelAdvancement,scores={stats=17}] ~~~ scoreboard players set @e[name=lvl19Strategy] stats 0
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=17}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 18

# 关卡结束通用函数
function levels/all_levels/level_completed