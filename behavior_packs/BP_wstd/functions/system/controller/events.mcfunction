# ===== 事件控制器 =====
# 该函数用于处理杂项内容，或是在某个范围通用的条件下所执行的内容

# --- 清除物品掉落物 ---
# 在大厅时执行 | 开发者模式下不执行 | 每秒执行1次
execute if score level data matches -3..0 if score developerMode settings matches 0 if score tick time matches 2 run kill @e[type=item]

# --- 在大厅时回血 ---
# 在大厅时执行 | 每秒执行1次
execute if score level data matches -3..0 if score tick time matches 2 run effect @a instant_health 1 5 true

# --- 为玩家的工具附魔效率V ---
# 第28关和彩蛋第8关除外（第28关不能让木锹附魔，彩蛋第8关不需要附魔） | 开发者模式下不执行 | 每秒执行1次
execute unless score level data matches 28 unless score level data matches 48 if score developerMode settings matches 0 if score tick time matches 2 run enchant @a efficiency 5

# --- 为玩家施加饱和效果 ---
# 第24关除外（这关需要吃河豚） | 每秒执行1次
execute unless score level data matches 24 if score tick time matches 2 run effect @a saturation 1 5 true

# --- 难度锁定 ---
# 第24关除外（该关卡使用简单难度，防止玩家饿死） | 每秒执行1次
execute unless score level data matches 24 if score tick time matches 2 run difficulty hard

# --- 为玩家清除经验 ---
# 开发者模式下不执行 | 每秒执行1次
execute if score developerMode settings matches 0 if score tick time matches 2 run xp -100L @a

# --- 设置重生点 ---
# 教程关卡除外（该关卡使用自己的重生点）
execute unless score level data matches -18 as @a in overworld run spawnpoint @s 12 8 3

# --- 大厅关卡下锁定时间线 ---
# 防止部分关卡结束后可能关闭时间线导致异常
execute if score level data matches -3..0 unless score timeline active matches 2 run scoreboard players set timeline active 2

# --- 维度检测器 ---
execute as @a at @s run function lib/get_data/player/dimension

# --- 错误ID矫正器 ---

## 若出现错误的关卡ID（即不为-20~60的关卡ID），则予以矫正
execute unless score level data matches -20..60 run tellraw @a {"rawtext":[{"translate":"chat.error.invalid_level_id","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}
execute unless score level data matches -20..60 run function lib/modify_data/level/quit
## 若在错误的关卡ID下进入下界或末地，则予以矫正 | 不在开发者模式下时执行
execute if score developerMode settings matches 0 unless score level data matches 0 unless score level data matches 7 unless score level data matches 10 unless score level data matches -15 if entity @a[scores={dimension=1}] as @a run function halls/dimension_error/start_level
execute if score developerMode settings matches 0 unless score level data matches 8 if entity @a[scores={dimension=2}] as @a run function halls/dimension_error/start_level

# --- 地图内时间 ---
# 结束特效时除外 | 每秒执行1次

## 当玩家启用终为白日时，设置为终为白日
execute unless score level data matches -13 if score tick time matches 3 if score mapTime settings matches 0 run time set 6000
## 当玩家启用烟花教程为黑夜时，按data.level决定 | -14为烟花教程 -5为设置
execute unless score level data matches -13 if score tick time matches 3 if score mapTime settings matches 1 unless score level data matches -14 run time set 6000
execute unless score level data matches -13 if score tick time matches 3 if score mapTime settings matches 1 unless score level data matches -5 run time set 6000
execute unless score level data matches -13 if score tick time matches 3 if score mapTime settings matches 1 if score level data matches -14 run time set 18000
execute unless score level data matches -13 if score tick time matches 3 if score mapTime settings matches 1 if score level data matches -5 run time set 18000
## 当玩家启用终为黑夜时，设置为终为白日
execute unless score level data matches -13 if score tick time matches 3 if score mapTime settings matches 2 run time set 18000

# --- 彩蛋、限时关卡的解锁与完成提示 ---

## 彩蛋关卡解锁 | 发现按钮即可
execute if score progress.easterEgg record matches -1 if block 28 11 35 stone_button ["facing_direction"=2,"button_pressed_bit"=true] run function halls/hub/easter_egg/events/unlock
## 限时关卡解锁 | 通过8个彩蛋关卡和主线解锁
execute if score progress.timeLimited record matches -1 if score progress.mapStage record matches 1.. if score progress.easterEgg record matches 8.. run function halls/hub/time_limited/events/unlock

# --- 语言与客户端检测 ---
# 每秒检测1次

execute if score tick time matches 13 run function lib/get_data/language
execute if score tick time matches 13 run function lib/get_data/client
