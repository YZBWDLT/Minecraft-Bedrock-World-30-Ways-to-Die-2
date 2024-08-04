# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 终点 ---

## 在终点处释放粒子 | 每秒执行1次
execute if score tick time matches 3 run particle wstd:red -35 33 -85
## 检测玩家到达终点
kill @a[x=-35,y=34,z=-85,r=1.5]

# --- 限时关卡倒计时 ---

## 每秒计时，若倒计时达到0则自动退出
execute if score timeline time matches 19 run scoreboard players remove remainingTime time 1
execute unless score timeline time matches 0..19 run scoreboard players set timeline time 0
execute if score remainingTime time matches ..0 run function levels/time_limited/level_2/events/time_out
