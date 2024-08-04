# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 分值检测 ---

## 检测实体掉进坑里
execute as @e[x=-54,y=21,z=-96,dx=2,dy=0,dz=2] run function levels/time_limited/level_4/events/score_operator
## 红石灯检测
execute if score tick time matches 5 run function levels/time_limited/level_4/events/show_redstone_lamp
## 当玩家获得5分之后，结束游戏
execute if score timeLimited4.totalScore data matches 5.. unless entity @a[hasitem={item=wstd:skip}] run function levels/time_limited/level_4/events/finish_level

# --- 玩家 ---

## 防止玩家掉到坑里
execute as @a[x=-57,y=21,z=-99,dx=8,dy=8,dz=8] at @s run function levels/time_limited/level_4/events/player_fell_into_hole
## 给予玩家工具
execute if score timeline active matches 1 run function levels/time_limited/level_4/events/item_supplier
## 附魔
execute if score tick time matches 5 run function levels/time_limited/level_4/events/enchant

# --- 限时关卡倒计时 ---

## 每秒计时，若倒计时达到0则自动退出
execute if score timeline time matches 19 run scoreboard players remove remainingTime time 1
execute unless score timeline time matches 0..19 run scoreboard players set timeline time 0
execute if score remainingTime time matches ..0 run function levels/time_limited/level_4/events/time_out
