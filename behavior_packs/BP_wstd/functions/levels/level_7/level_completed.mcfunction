# 第7关结束

# 清理传送门
execute @a[scores={dimension=0}] ~~~ fill 15 21 70 18 25 70 air

# 传送到下一关
tp @a -9 10 27 facing -9 10 30

# 当本关的辅助功能未使用时，清除辅助功能判定实体
execute @e[name=lvl7Hint,scores={stats=0}] ~~~ kill @s
execute @e[name=lvl7Strategy,scores={stats=0}] ~~~ kill @s

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 设置下一关的提示攻略检测并初始化
execute @e[name=levelAdvancement,scores={stats=6}] ~~~ summon je:marker "lvl8Hint" 0 2 0
execute @e[name=levelAdvancement,scores={stats=6}] ~~~ summon je:marker "lvl8Strategy" 0 2 0
execute @e[name=levelAdvancement,scores={stats=6}] ~~~ scoreboard players set @e[name=lvl8Hint] stats 0
execute @e[name=levelAdvancement,scores={stats=6}] ~~~ scoreboard players set @e[name=lvl8Strategy] stats 0
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=levelAdvancement,scores={stats=6}] ~~~ scoreboard players set @e[name=levelAdvancement] stats 7

# 清除标记
kill @e[name=diedInOverworld]

# 关闭时间线
function system/disable_timeline

# 触发所有关卡结束函数
function levels/all_levels/level_completed