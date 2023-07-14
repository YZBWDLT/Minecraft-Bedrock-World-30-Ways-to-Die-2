# 所有关卡通用 退出关卡函数

# ---------- ID相关项 ----------

# ===== 提醒玩家超时 =====
## 从限时关卡返回
execute @e[name=level,scores={backend=36..40}] ~~~ execute @e[name=remainingTime,scores={time=..0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.out_of_time"}]}
execute @e[name=level,scores={backend=36..40}] ~~~ execute @e[name=remainingTime,scores={time=..0}] ~~~ scoreboard players set @e[name=soundPlayer] active 4

# ===== 播放音乐 =====
## 从限时关卡返回
execute @e[name=level,scores={backend=36..40}] ~~~ function system/music/play_maingame
## 从DIY关卡返回
execute @e[name=level,scores={backend=51..60}] ~~~ function system/music/play_maingame

# ===== 停止运行命令系统 =====
## 从DIY关卡返回
execute @e[name=level,scores={backend=51..60}] ~~~ fill -101 1 -10 -111 7 -21 air 0 replace redstone_block

# ===== 运行各大厅主界面场景 =====
## 从主线关卡返回
execute @e[name=level,scores={backend=!36..60}] ~~~ function halls/main_hall/start_level
## 从限时关卡返回
execute @e[name=level,scores={backend=36..40}] ~~~ function halls/time_limited_hall/start_level
## 从彩蛋关卡返回
execute @e[name=level,scores={backend=41..50}] ~~~ function halls/easter_egg_hall/start_level
## 从自定义关卡返回
execute @e[name=level,scores={backend=51..60}] ~~~ function halls/diy_hall/start_level

# ---------- 常规项 ----------

# ===== 停止检测物品 =====
function system/stop_item_test