# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 关卡 ---

## 第1关
execute as @a[x=-56,y=9,z=9,r=1] if score progress.timeLimited record matches 0..5 run function levels/time_limited/level_1/start
execute as @a[x=-56,y=9,z=9,r=1] at @s if score progress.timeLimited record matches -1 run function halls/hub/time_limited/events/level_locked

## 第2关
execute as @a[x=-60,y=9,z=9,r=1] if score progress.timeLimited record matches 1..5 run function levels/time_limited/level_2/start
execute as @a[x=-60,y=9,z=9,r=1] at @s if score progress.timeLimited record matches -1..0 run function halls/hub/time_limited/events/level_locked

## 第3关
execute as @a[x=-56,y=9,z=1,r=1] if score progress.timeLimited record matches 2..5 run function levels/time_limited/level_3/start
execute as @a[x=-56,y=9,z=1,r=1] at @s if score progress.timeLimited record matches -1..1 run function halls/hub/time_limited/events/level_locked

## 第4关
execute as @a[x=-60,y=9,z=1,r=1] if score progress.timeLimited record matches 3..5 run function levels/time_limited/level_4/start
execute as @a[x=-60,y=9,z=1,r=1] at @s if score progress.timeLimited record matches -1..2 run function halls/hub/time_limited/events/level_locked

## 第5关
execute as @a[x=-64,y=9,z=5,r=1] if score progress.timeLimited record matches 4..5 run function levels/time_limited/level_5/start
execute as @a[x=-64,y=9,z=5,r=1] at @s if score progress.timeLimited record matches -1..3 run function halls/hub/time_limited/events/level_locked
