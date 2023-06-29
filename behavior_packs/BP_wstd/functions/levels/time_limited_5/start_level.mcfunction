# 启动与重启函数

# 设置level（关卡ID）
scoreboard players set @e[name=level] backend 40

# 清空进度
scoreboard players set @e[name=timeline] active 2
scoreboard players set @e[name=counter] backend 0

# 调用所有关卡通用函数
function levels/all_levels/start_level

# 给予玩家下一步 | 在这关中，其他辅助功能物品都是有清除风险的，而下一步本身就需要在开始后清除，所以只在开始游戏时给予一次
give @a[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

# 限时设定
scoreboard players set @e[name=remainingTime] time 350

# 标题&音效
titleraw @a title {"rawtext":[{"translate":"title.time_limited_5"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_5"}]}

# 复制房间
structure load time_limited_5 -20 20 -105

# 传送玩家
tp @a -11 22 -104 facing -19 22 -96

# 启动时间线
function system/enable_timeline_without_flowing

# 展示文本
summon wstd:text_display "§b§l游戏规则" -18.9 22.7 -100
summon wstd:text_display "§a复制建筑！用所给材料把左侧的建筑在右侧" -18.9 22.4 -100
summon wstd:text_display "§a原模原样复制出来即可！" -18.9 22.1 -100
summon wstd:text_display "§a复制出5个建筑即可获胜，祝你好运b（￣▽￣）d" -18.9 21.8 -100

# 红石灯重置
fill -21 23 -98 -21 23 -102 air

# 检测器 | 因为旧版语法限制，必须用命令方块代替
fill 13 5 7 13 5 12 redstone_block