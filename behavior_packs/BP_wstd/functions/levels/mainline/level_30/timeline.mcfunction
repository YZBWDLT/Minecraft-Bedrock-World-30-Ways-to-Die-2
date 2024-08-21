# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 对话时 ---
# 在进入关卡时，若剧情启用，则执行本模块内容

## 当对话进行到560刻时，把玩家传送到其他地方（之后再偷偷地处理掉）
execute if score timeline active matches 1 if score timeline time matches 560 run tp @e[type=wstd:creator] 5 5 14
execute if score timeline active matches 1 if score timeline time matches 720.. run function levels/mainline/level_30/events/start_level

# --- 准备开始游戏时 ---
# 在进入关卡时，若剧情未启用或剧情已结束，则执行本模块内容
# 本关有6秒的时间用于重置地图，其中重置地图本身需要5秒，在第6秒（120刻）的时候正式开始
execute if score timeline active matches 2 if score timeline time matches 120 run function levels/mainline/level_30/events/start_level_formally
execute if score timeline active matches 2 if score timeline time matches 121 run function lib/modify_states/timeline/enable_6

# --- 销毁下界传送门 ---
# 在本关下始终执行 | 每秒执行1次

execute as @a at @s if block ~~~ portal if score tick time matches 3 run function levels/mainline/level_30/events/destroy_portal
execute as @a at @s if block ~1~~ portal if score tick time matches 3 run function levels/mainline/level_30/events/destroy_portal
execute as @a at @s if block ~~~1 portal if score tick time matches 3 run function levels/mainline/level_30/events/destroy_portal
execute as @a at @s if block ~-1~~ portal if score tick time matches 3 run function levels/mainline/level_30/events/destroy_portal
execute as @a at @s if block ~~~-1 portal if score tick time matches 3 run function levels/mainline/level_30/events/destroy_portal

# --- 给予玩家药效 ---
# 在本关下始终执行

## 水肺 | 每秒给予1次
execute if score tick time matches 2 run effect @a water_breathing 30 0 true
## 防火 | （给玩家一个不能通过岩浆死亡的假象，不设置为1秒1次）
## 这个bug真的很好修！改一下player.json或者进岩浆进火就一直回血就好了，真不是我懒得修，只是这样更有意思而已
effect @a fire_resistance 30 0 true
