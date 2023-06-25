# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 35

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.hided_3"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.hided_3"}]}

# 复制房间
structure load hided_3 -91 20 105

# 传送玩家
tp @a -75 22 122

# 提醒玩家
tellraw @a {"rawtext":[{"translate":"chat.hided_3"}]}

# 展示文本
summon wstd:text_display ":( 我渴了" -89 23 107

# 启用时间线
function system/enable_timeline

# 启用物品检测
scoreboard players set @e[name=itemTester1] active 2
scoreboard players set @e[name=itemTester2] active 2
scoreboard players set @e[name=itemTester3] active 2
scoreboard players set @e[name=itemTester4] active 2
scoreboard players set @e[name=itemTester5] active 2