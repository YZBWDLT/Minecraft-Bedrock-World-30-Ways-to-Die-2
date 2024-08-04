# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 检测鸡走到终点 ---

## 显示粒子 | 每秒显示1次
execute if score tick time matches 4 run particle wstd:block_hint 24 21 -99

## 当检测到鸡走到终点后，清除玩家
execute as @e[type=chicken,x=24,y=21,z=-99,r=1] run function levels/time_limited/level_3/events/finish_level

# --- 限时关卡倒计时 ---

## 每秒计时，若倒计时达到0则自动退出
execute if score timeline time matches 19 run scoreboard players remove remainingTime time 1
execute unless score timeline time matches 0..19 run scoreboard players set timeline time 0
execute if score remainingTime time matches ..0 run function levels/time_limited/level_3/events/time_out
