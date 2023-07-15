# 物品使用控制器
# 因Bug - 489 在非开发者模式的情况下，使用可能导致游戏模式更改的功能会导致崩溃
# 问题原因 | 使用了实验性玩法的数据驱动物品在run_command的稳定性上实在不敢恭维。在手机版创造模式下使用返回或跳过等可能导致游戏模式更改的功能；当手动执行同样的函数时，不崩溃；当在同样条件下使用物品稳定崩溃。
# 为消除这个顾虑，需要使用本控制器来转移执行者，防止崩溃

# 物品ID
# 进度中心 0 | 返回 1 | 改变房间大小 2 | 自定义大厅 3 | 彩蛋大厅 4 | 烟花教程 5 | 提示 6 | 加载关卡 7 | 下一步 8 |
# 播放音乐 9 | 游玩时间 10 | 退出 11 | 重置关卡 12 | 重置命令系统 13 | 保存关卡 14 | 设置中心 15 | 跳过关卡 16 |
# 统计中心 17 | 攻略 18 | 限时大厅 19

# 检测ID，然后执行对应命令
execute @a[scores={itemUsed=0}] ~~~ function items/advancement_center
execute @a[scores={itemUsed=1}] ~~~ function items/back
execute @a[scores={itemUsed=2}] ~~~ function items/change_room_size
execute @a[scores={itemUsed=3}] ~~~ function items/diy_hall
execute @a[scores={itemUsed=4}] ~~~ function items/easter_egg_hall
execute @a[scores={itemUsed=5}] ~~~ function items/firework_tutorial
execute @a[scores={itemUsed=6}] ~~~ function items/hint
execute @a[scores={itemUsed=7}] ~~~ function items/load_level
execute @a[scores={itemUsed=8}] ~~~ function items/next_step
execute @a[scores={itemUsed=9}] ~~~ function items/play_music
execute @a[scores={itemUsed=10}] ~~~ function items/played_time
execute @a[scores={itemUsed=11}] ~~~ function items/quit
execute @a[scores={itemUsed=12}] ~~~ function items/reset
execute @a[scores={itemUsed=13}] ~~~ function items/reset_command_system
execute @a[scores={itemUsed=14}] ~~~ function items/save_level
execute @a[scores={itemUsed=15}] ~~~ function items/setting_center
execute @a[scores={itemUsed=16}] ~~~ function items/skip
execute @a[scores={itemUsed=17}] ~~~ function items/stats_center
execute @a[scores={itemUsed=18}] ~~~ function items/strategy
execute @a[scores={itemUsed=19}] ~~~ function items/time_limited_hall
execute @a[scores={itemUsed=20}] ~~~ function items/random_potion

# 归零
scoreboard players set @a[scores={itemUsed=!-1}] itemUsed -1