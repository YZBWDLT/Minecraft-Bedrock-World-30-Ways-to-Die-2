# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 33

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.hided_1"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.hided_1"}]}

# 复制房间
structure load hided_1 -66 20 68

# 传送玩家
tp @a -58 22 76 facing -63 22 71

kill @e[type=item]

# 生成各作者
summon wstd:creator -63 22 71 become_lt "YZBWDLT"
summon wstd:creator -62 22 70 become_bd "Andy7343"
summon wstd:creator -64 22 72 become_ngz "PumpkinJui"
summon wstd:creator -64 22 73 become_gz "PigeonKI"
summon wstd:creator -61 22 70 become_zy "xhduoduobaby"
summon wstd:creator -61 21 71 become_xs "xiaoshu512"
summon wstd:creator -63 21 73 become_hws "AnimalChalk2526"
summon wstd:creator -60 21 70 become_mdr "Tuffy2020China"
summon wstd:creator -64 21 74 become_jd "MildTurt"

# 提醒玩家
tellraw @a {"rawtext":[{"translate":"chat.level.hided_1"}]}