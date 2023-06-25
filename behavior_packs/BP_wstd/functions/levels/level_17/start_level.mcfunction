# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 17

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.level_17"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.level_17"}]}

# 复制房间
structure load level_17 -2 20 80

# 传送玩家
tp @a 6 22 88 facing -1 22 81

# 给予辅助功能物品
execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

# 设置itemTester1和itemTester2的分数均为0 | 目的是为了检测进度
# 用这两个Tester并不是因为真的需要物品检测，纯粹是不想再创建新变量了（QAQ）
scoreboard players set @e[name=itemTester1] active 0
scoreboard players set @e[name=itemTester2] active 0
scoreboard players set @e[name=itemTester3] active 0

# 开启进度检测（哎，要是有新exe能用就好了，可惜还要用1.18.30的旧语法写，好难受啊）
fill 9 5 9 9 5 11 minecraft:redstone_block

# 启动时间线
function system/enable_timeline
