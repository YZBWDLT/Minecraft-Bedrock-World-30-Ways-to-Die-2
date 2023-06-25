# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 34

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.hided_2"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.hided_2"}]}

# 复制房间
structure load hided_2 -61 20 105

# 传送玩家
tp @a -42 22 124

# 提醒玩家
tellraw @a {"rawtext":[{"translate":"chat.hided_2"}]}