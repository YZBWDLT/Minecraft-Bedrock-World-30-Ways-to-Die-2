# 关卡完成

# 自定义死亡信息
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.deathmessage.easter_egg_3","with":{"rawtext":[{"selector":"@s"}]}}]}

# 传送到下一关入口
tp @a -34 10 5 facing -34 10 8

# 开启下一关并设置下一关的辅助功能设定（只执行一次）
## 关卡进度设置为本关关卡ID，即本关已完成
execute @e[name=easterEggAdvancement,scores={stats=42}] ~~~ scoreboard players set @e[name=easterEggAdvancement] stats 43

# 关卡结束通用函数
function levels/all_levels/level_completed

function system/disable_timeline