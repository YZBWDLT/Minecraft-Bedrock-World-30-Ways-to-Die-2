# ===== 保存关卡时间线 =====
# [num]指代该模块命令将于第num刻开始执行

# 介绍一下这个模块在干什么。这是保存结构时所执行的命令。所幸保存关卡仅限编辑模式使用。大体逻辑如下：
# · 首先，做前期准备，提醒玩家、更改玩家模式等；
# · 然后，先清除掉以前的结构，实测在2.3版本下，会出现结构互相影响的问题。
# · 然后，加载结构，这需要3秒的时间。
# · 最后，结构加载完成。如果是游戏模式就开始游戏，但因为命令方块执行慢于函数，这里不得不额外加上延迟。如果是编辑模式，那就重新给予物品。

# --- [1] 调整玩家状态 ---

## 清除玩家的物品
execute if score timeline time matches 1 as @a run function lib/modify_data/item/clear
execute if score timeline time matches 1 as @a run clear @s ender_pearl

## 提示玩家
execute if score timeline time matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.item.save_level.start_saving"}]}

# --- [2] 清除展示文本 ---

## 清除展示文本
execute if score timeline time matches 2 as @a run kill @e[type=wstd:text_display]

# --- [3] 保存结构 ---
# 维持60刻，给玩家的设备留些喘息空间

execute if score timeline time matches 3 as @a run function levels/diy_levels/events/save_level

# --- [65] 结构保存完成 ---
# 小小2的6次方，竟成了网易的心腹之患。此消息一出，立刻引起全球民众舆论哗然。
# 64究竟有什么本领，能够让网易将这么简单，朴素而常见的数字赫然列为屏蔽词之行列。我百思不得其解。
# 就连著名的美国五星上将麦克阿瑟曾说，我还从来没有见过一个把64当做屏蔽词的游戏，但如果你玩网易我的世界，你会大开眼界。
# 大型纪录片《屏蔽词64传奇》，持续为您播出。

## 提示玩家已保存完毕
execute if score timeline time matches 65 as @a run tellraw @s {"rawtext":[{"translate":"chat.item.save_level.completed"}]}

## 重新给予物品等
execute if score timeline time matches 65 as @a run function levels/diy_levels/events/start_editing_general
