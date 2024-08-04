# ===== 读取关卡时间线 =====
# [num]指代该模块命令将于第num刻开始执行

# 介绍一下这个模块在干什么。这就是读取结构时所执行的命令。大体逻辑如下：
# · 首先，做前期准备，提醒玩家、更改玩家模式等；
# · 然后，先清除掉以前的结构，实测在2.3版本下，会出现结构互相影响的问题。
# · 然后，加载结构，这需要3秒的时间。
# · 最后，结构加载完成。如果是游戏模式就开始游戏，但因为命令方块执行慢于函数，这里不得不额外加上延迟。如果是编辑模式，那就重新给予物品。

# --- [1] 调整玩家状态 ---

## 清除玩家的物品
execute if score timeline time matches 1 as @a run function lib/modify_data/item/clear
execute if score timeline time matches 1 as @a run clear @s ender_pearl

## 更改玩家的游戏模式，传送玩家到等待区 | 仅限游戏模式
execute if score timeline time matches 1 if score diyLevels.isEditMode data matches 0 as @a run gamemode adventure @s
execute if score timeline time matches 1 if score diyLevels.isEditMode data matches 0 as @a run tp @s 4 8 3

## 提示玩家
execute if score timeline time matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.item.load_level.start_loading"}]}

# --- [2] 开始加载结构（第I阶段） ---
# 处理屏障天花板和屏障地板的问题

## 添加天花板和地板的限制 | 仅限编辑模式
execute if score timeline time matches 2 if score diyLevels.isEditMode data matches 1 run fill -101 32 -10 -132 32 -41 barrier
execute if score timeline time matches 2 if score diyLevels.isEditMode data matches 1 run fill -101 0 -10 -132 0 -41 barrier

## 添加天花板的限制，但取消地板的限制 | 仅限游戏模式
execute if score timeline time matches 2 if score diyLevels.isEditMode data matches 1 run fill -101 32 -10 -132 32 -41 barrier
execute if score timeline time matches 2 if score diyLevels.isEditMode data matches 1 run fill -101 0 -10 -132 0 -41 air

# --- [3~66] 开始加载结构（第II阶段） ---
# 清除原结构 | 维持64刻

# ???

# --- [67] 开始加载结构（第III阶段） ---
# 加载新结构 | 维持60刻

## 加载结构
execute if score timeline time matches 67 run function levels/diy_levels/events/load_level

# --- [127] 结构加载完成（第I阶段） ---
# 先开始游戏，获取限时时长

## 提醒玩家加载完成
execute if score timeline time matches 127 if score isNetease data matches 0 as @a run tellraw @s {"rawtext":[{"translate":"chat.item.load_level.completed"}]}
execute if score timeline time matches 127 if score isNetease data matches 1 as @a run tellraw @s {"rawtext":[{"translate":"netease.chat.item.load_level_completed"}]}

## 清除多余掉落物
execute if score timeline time matches 127 run kill @e[type=item]

## （仅限游戏模式）触发开始游戏的命令方块 | 这组命令方块将同时获取限时时长
execute if score timeline time matches 127 if score diyLevels.isEditMode data matches 0 run setblock -103 2 -12 redstone_block

## （仅限编辑模式）执行剧情模式的通用函数
execute if score timeline time matches 127 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/events/start_editing_general

# --- [129] 结构加载完成（第II阶段） ---
# （仅限游戏模式）获取到限时时长之后，执行游戏模式的通用函数

execute if score timeline time matches 129 if score diyLevels.isEditMode data matches 0 run function levels/diy_levels/events/start_gaming_general
