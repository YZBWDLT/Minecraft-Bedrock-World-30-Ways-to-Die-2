# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 关卡 ---

## 第1关
execute as @a[x=-22,y=9,z=9,r=1] at @s if score progress.easterEgg record matches 0..10 run function levels/easter_egg/level_1/start
execute as @a[x=-22,y=9,z=9,r=1] at @s if score progress.easterEgg record matches -1 run function halls/hub/easter_egg/events/level_locked

## 第2关
execute as @a[x=-26,y=9,z=9,r=1] at @s if score progress.easterEgg record matches 1..10 run function levels/easter_egg/level_2/start
execute as @a[x=-26,y=9,z=9,r=1] at @s if score progress.easterEgg record matches -1..0 run function halls/hub/easter_egg/events/level_locked

## 第3关
execute as @a[x=-30,y=9,z=9,r=1] at @s if score progress.easterEgg record matches 2..10 run function levels/easter_egg/level_3/start
execute as @a[x=-30,y=9,z=9,r=1] at @s if score progress.easterEgg record matches -1..1 run function halls/hub/easter_egg/events/level_locked

## 第4关
execute as @a[x=-34,y=9,z=9,r=1] at @s if score progress.easterEgg record matches 3..10 run function levels/easter_egg/level_4/start
execute as @a[x=-34,y=9,z=9,r=1] at @s if score progress.easterEgg record matches -1..2 run function halls/hub/easter_egg/events/level_locked

## 第5关
execute as @a[x=-38,y=9,z=9,r=1] at @s if score progress.easterEgg record matches 4..10 run function levels/easter_egg/level_5/start
execute as @a[x=-38,y=9,z=9,r=1] at @s if score progress.easterEgg record matches -1..3 run function halls/hub/easter_egg/events/level_locked

## 第6关
execute as @a[x=-22,y=9,z=1,r=1] at @s if score progress.easterEgg record matches 5..10 run function levels/easter_egg/level_6/start
execute as @a[x=-22,y=9,z=1,r=1] at @s if score progress.easterEgg record matches -1..4 run function halls/hub/easter_egg/events/level_locked

## 第7关
execute as @a[x=-26,y=9,z=1,r=1] at @s if score progress.easterEgg record matches 6..10 run function levels/easter_egg/level_7/start
execute as @a[x=-26,y=9,z=1,r=1] at @s if score progress.easterEgg record matches -1..5 run function halls/hub/easter_egg/events/level_locked

## 第8关
execute as @a[x=-30,y=9,z=1,r=1] at @s if score progress.easterEgg record matches 7..10 run function levels/easter_egg/level_8/start
execute as @a[x=-30,y=9,z=1,r=1] at @s if score progress.easterEgg record matches -1..6 run function halls/hub/easter_egg/events/level_locked

## 第9关
execute as @a[x=-34,y=9,z=1,r=1] at @s if score progress.easterEgg record matches 8..10 run function levels/easter_egg/level_9/start
execute as @a[x=-34,y=9,z=1,r=1] at @s if score progress.easterEgg record matches -1..7 run function halls/hub/easter_egg/events/level_locked

## 第10关
execute as @a[x=-38,y=9,z=1,r=1] at @s if score progress.easterEgg record matches 9..10 run function levels/easter_egg/level_10/start
execute as @a[x=-38,y=9,z=1,r=1] at @s if score progress.easterEgg record matches -1..8 run function halls/hub/easter_egg/events/level_locked

## 隐藏关卡
execute as @a[x=-38,y=9,z=12,r=1] run function levels/hided/level_3/start

