# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 分值检测 ---

## 结构相同检测 | 仅当游戏开始后（active.timeline = 1）运行
##      ↓ 若玩家的分数在-1~4之间                             ↓ 游戏开始后                        ↓ 结构检测吻合                                   
execute if score timeLimited5.totalScore data matches -1..4 if score timeline active matches 1 if blocks -14 21 -96 -19 25 -99 -19 21 -104 all run function levels/time_limited/level_5/events/next_puzzle
## 红石灯检测 | 每秒执行1次
execute if score tick time matches 5 run function levels/time_limited/level_5/events/show_redstone_lamp
## 当玩家获得5分之后，结束游戏
execute if score timeLimited5.totalScore data matches 5.. unless entity @a[hasitem={item=wstd:skip}] run function levels/time_limited/level_5/events/finish_level

# --- 玩家 ---

## 药效
execute if score tick time matches 5 run effect @a resistance 30 5 true

# --- 限时关卡倒计时 ---

## 每秒计时，若倒计时达到0则自动退出
execute if score timeline time matches 19 run scoreboard players remove remainingTime time 1
execute unless score timeline time matches 0..19 run scoreboard players set timeline time 0
execute if score remainingTime time matches ..0 run function levels/time_limited/level_4/events/time_out
