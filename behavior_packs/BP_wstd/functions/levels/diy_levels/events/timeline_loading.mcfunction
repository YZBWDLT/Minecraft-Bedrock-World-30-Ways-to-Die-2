# ===== 读取关卡时间线 =====
# [num]指代该模块命令将于第num刻开始执行

# 介绍一下这个模块在干什么。这就是读取结构时所执行的命令。大体逻辑如下：
# · 首先，做前期准备，进行物品的清除、以及提示玩家加载即将开始。
# · 然后，先清除掉以前的结构。（实测在2.3版本下，会出现结构互相影响的问题）
# · 然后，加载结构，这需要3秒的时间。
# · 最后，结构加载完成。如果是游戏模式就开始游戏，但因为命令方块执行慢于函数，这里不得不额外加上延迟。如果是编辑模式，那就重新给予物品。

# 该函数将读取于：启动&重启关卡、编辑模式重新读取时

# --- [1] 调整玩家状态 ---

## 清除玩家的物品
execute if score timeline time matches 1 as @a run function lib/modify_data/item/clear
execute if score timeline time matches 1 as @a run clear @s ender_pearl

## 提示玩家
execute if score timeline time matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.item.load_level.start_loading"}]}

# --- [2~33] 清除原有结构 ---
# 处理屏障天花板和屏障地板的问题，清除原结构

## [2] 添加屏障天花板
execute if score timeline time matches 2 run fill -101 32 -10 -132 32 -41 barrier

## [2] 添加屏障地板
execute if score timeline time matches 2 run fill -101 0 -10 -132 0 -41 barrier

## [2] 进行标记实体初始化
execute if score timeline time matches 2 run summon wstd:marker "sceneCleaner" -132 31 -41

## [2~33] 从上到下逐层清除
execute if score timeline time matches 2..32 as @e[name=sceneCleaner] at @s run fill ~~~ ~31~~31 air
execute if score timeline time matches 2..31 as @e[name=sceneCleaner] at @s run tp @s ~~-1~

## [33] 移除标记实体
execute if score timeline time matches 33 run kill @e[name=sceneCleaner]

## [33][仅游戏模式] 移除屏障地板
execute if score timeline time matches 33 if score diyLevels.isEditMode data matches 0 run fill -101 0 -10 -132 0 -41 air

# --- [34~94] 加载新结构 ---

## [34] 加载结构
execute if score timeline time matches 34 run function levels/diy_levels/events/load_level

## [93][仅游戏模式] 加载开始游戏的命令方块组，同时开始加载限时命令方块
execute if score timeline time matches 93 if score diyLevels.isEditMode data matches 0 run setblock -103 2 -12 redstone_block

## [94] 提醒玩家加载完成
execute if score timeline time matches 94 if score isNetease data matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.item.load_level.completed"}]}
execute if score timeline time matches 94 if score isNetease data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"netease.chat.item.load_level_completed"}]}

## [95] 设置边界方块
execute if score timeline time matches 95 run fill -101 15 -10 -132 15 -10 border_block
execute if score timeline time matches 95 run fill -101 15 -10 -101 15 -41 border_block
execute if score timeline time matches 95 run fill -132 15 -41 -132 15 -10 border_block
execute if score timeline time matches 95 run fill -132 15 -41 -101 15 -41 border_block

## [100] 开始对应模式
execute if score timeline time matches 100 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/events/start_gaming_2
execute if score timeline time matches 100 if score diyLevels.isEditMode data matches 1 run function levels/diy_levels/events/start_editing
