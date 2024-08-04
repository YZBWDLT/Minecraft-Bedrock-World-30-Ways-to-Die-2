# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 关卡 ---

## 第1关
execute as @a[x=19,y=9,z=31,r=1] if score progress.level record matches 0..32 run function levels/mainline/level_1/start
execute as @a[x=19,y=9,z=31,r=1] at @s if score progress.level record matches -1 run function halls/hub/main/events/level_locked

## 第2关
execute as @a[x=15,y=9,z=31,r=1] if score progress.level record matches 1..32 run function levels/mainline/level_2/start
execute as @a[x=15,y=9,z=31,r=1] at @s if score progress.level record matches -1..0 run function halls/hub/main/events/level_locked

## 第3关
execute as @a[x=11,y=9,z=31,r=1] if score progress.level record matches 2..32 run function levels/mainline/level_3/start
execute as @a[x=11,y=9,z=31,r=1] at @s if score progress.level record matches -1..1 run function halls/hub/main/events/level_locked

## 第4关
execute as @a[x=7,y=9,z=31,r=1] if score progress.level record matches 3..32 run function levels/mainline/level_4/start
execute as @a[x=7,y=9,z=31,r=1] at @s if score progress.level record matches -1..2 run function halls/hub/main/events/level_locked

## 第5关
execute as @a[x=3,y=9,z=31,r=1] if score progress.level record matches 4..32 run function levels/mainline/level_5/start
execute as @a[x=3,y=9,z=31,r=1] at @s if score progress.level record matches -1..3 run function halls/hub/main/events/level_locked

## 第6关
execute as @a[x=-1,y=9,z=31,r=1] if score progress.level record matches 5..32 run function levels/mainline/level_6/start
execute as @a[x=-1,y=9,z=31,r=1] at @s if score progress.level record matches -1..4 run function halls/hub/main/events/level_locked

## 第7关
execute as @a[x=-5,y=9,z=31,r=1] if score progress.level record matches 6..32 run function levels/mainline/level_7/start
execute as @a[x=-5,y=9,z=31,r=1] at @s if score progress.level record matches -1..5 run function halls/hub/main/events/level_locked

## 第8关
execute as @a[x=-9,y=9,z=31,r=1] if score progress.level record matches 7..32 run function levels/mainline/level_8/start
execute as @a[x=-9,y=9,z=31,r=1] at @s if score progress.level record matches -1..6 run function halls/hub/main/events/level_locked

## 第9关
execute as @a[x=-13,y=9,z=31,r=1] if score progress.level record matches 8..32 run function levels/mainline/level_9/start
execute as @a[x=-13,y=9,z=31,r=1] at @s if score progress.level record matches -1..7 run function halls/hub/main/events/level_locked

## 第10关
execute as @a[x=-17,y=9,z=31,r=1] if score progress.level record matches 9..32 in nether run function levels/mainline/level_10/start
execute as @a[x=-17,y=9,z=31,r=1] at @s if score progress.level record matches -1..8 run function halls/hub/main/events/level_locked

## 第11关
execute as @a[x=-21,y=9,z=31,r=1] if score progress.level record matches 10..32 run function levels/mainline/level_11/start
execute as @a[x=-21,y=9,z=31,r=1] at @s if score progress.level record matches -1..9 run function halls/hub/main/events/level_locked

## 第12关
execute as @a[x=-25,y=9,z=31,r=1] if score progress.level record matches 11..32 run function levels/mainline/level_12/start
execute as @a[x=-25,y=9,z=31,r=1] at @s if score progress.level record matches -1..10 run function halls/hub/main/events/level_locked

## 第13关
execute as @a[x=-29,y=9,z=31,r=1] if score progress.level record matches 12..32 run function levels/mainline/level_13/part_1/start
execute as @a[x=-29,y=9,z=31,r=1] at @s if score progress.level record matches -1..11 run function halls/hub/main/events/level_locked

## 第14关
execute as @a[x=-33,y=9,z=31,r=1] if score progress.level record matches 14..30 run function levels/mainline/level_14/start
execute as @a[x=-33,y=9,z=31,r=1] if score progress.level record matches 32 run function levels/mainline/level_14/start
execute as @a[x=-33,y=9,z=31,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 14..30 unless score progress.level record matches 32 run function halls/hub/main/events/level_locked

## 第15关
execute as @a[x=-37,y=9,z=31,r=1] if score progress.level record matches 14..30 run function levels/mainline/level_15/start
execute as @a[x=-37,y=9,z=31,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 14..30 run function halls/hub/main/events/level_locked

## 第16关
execute as @a[x=19,y=9,z=23,r=1] if score progress.level record matches 15..30 run function levels/mainline/level_16/start
execute as @a[x=19,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 15..30 run function halls/hub/main/events/level_locked

## 第17关
execute as @a[x=15,y=9,z=23,r=1] if score progress.level record matches 16..30 run function levels/mainline/level_17/start
execute as @a[x=15,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 16..30 run function halls/hub/main/events/level_locked

## 第18关
execute as @a[x=11,y=9,z=23,r=1] if score progress.level record matches 17..30 run function levels/mainline/level_18/start
execute as @a[x=11,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 17..30 run function halls/hub/main/events/level_locked

## 第19关
execute as @a[x=7,y=9,z=23,r=1] if score progress.level record matches 18..30 run function levels/mainline/level_19/start
execute as @a[x=7,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 18..30 run function halls/hub/main/events/level_locked

## 第20关
execute as @a[x=3,y=9,z=23,r=1] if score progress.level record matches 19..30 run function levels/mainline/level_20/start
execute as @a[x=3,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 19..30 run function halls/hub/main/events/level_locked

## 第21关
execute as @a[x=-1,y=9,z=23,r=1] if score progress.level record matches 20..30 run function levels/mainline/level_21/start
execute as @a[x=-1,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 20..30 run function halls/hub/main/events/level_locked

## 第22关
execute as @a[x=-5,y=9,z=23,r=1] if score progress.level record matches 21..30 run function levels/mainline/level_22/start
execute as @a[x=-5,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 21..30 run function halls/hub/main/events/level_locked

## 第23关
execute as @a[x=-9,y=9,z=23,r=1] if score progress.level record matches 22..30 run function levels/mainline/level_23/start
execute as @a[x=-9,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 22..30 run function halls/hub/main/events/level_locked

## 第24关
execute as @a[x=-13,y=9,z=23,r=1] if score progress.level record matches 23..30 run function levels/mainline/level_24/start
execute as @a[x=-13,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 23..30 run function halls/hub/main/events/level_locked

## 第25关
execute as @a[x=-17,y=9,z=23,r=1] if score progress.level record matches 24..30 run function levels/mainline/level_25/start
execute as @a[x=-17,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 24..30 run function halls/hub/main/events/level_locked

## 第26关
execute as @a[x=-21,y=9,z=23,r=1] if score progress.level record matches 25..30 run function levels/mainline/level_26/start
execute as @a[x=-21,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 25..30 run function halls/hub/main/events/level_locked

## 第27关
execute as @a[x=-25,y=9,z=23,r=1] if score progress.level record matches 26..30 run function levels/mainline/level_27/start
execute as @a[x=-25,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 26..30 run function halls/hub/main/events/level_locked

## 第28关
execute as @a[x=-29,y=9,z=23,r=1] if score progress.level record matches 27..30 run function levels/mainline/level_28/start
execute as @a[x=-29,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 27..30 run function halls/hub/main/events/level_locked

## 第29关
execute as @a[x=-33,y=9,z=23,r=1] if score progress.level record matches 28..30 run function levels/mainline/level_29/start
execute as @a[x=-33,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 28..30 run function halls/hub/main/events/level_locked

## 第30关
execute as @a[x=-37,y=9,z=23,r=1] if score progress.level record matches 29..30 run function levels/mainline/level_30/start
execute as @a[x=-37,y=9,z=23,r=1] at @s if score progress.level record matches -1..32 unless score progress.level record matches 29..30 run function halls/hub/main/events/level_locked

## 结束屋隐藏关卡
execute as @a[x=-46,y=10,z=35,r=1] if score progress.mapStage record matches 2 run function levels/hided/level_1/start


# --- 大厅传送 ---

## 传送到结束屋
execute as @a[x=21.5,y=9,z=29.5,r=0.5] run function halls/hub/main/functions/tp_to_end_room
## 传送到起始屋
execute as @a[x=-38.5,y=9,z=29.5,r=0.5] run function halls/hub/main/functions/tp_to_start_room

# --- 起始屋 ---

## 地图玩法 | 当完成3关后显示
execute as @a[x=24,y=9,z=30,r=0.75] if score progress.level record matches 3.. run function halls/hub/main/functions/how_to_play

# --- 结束屋 ---

## 播放结束音乐
execute as @a[x=-50,y=9,z=30,r=1] if score progress.mapStage record matches 2 run function halls/hub/main/functions/play_end_music
## 重新播放结束特效
execute as @a[x=-50,y=9,z=24,r=1] if score progress.mapStage record matches 2 run function halls/hub/main/functions/replay_final_animations
## 重置地图
execute as @a[x=-46,y=9,z=27,r=1] if score progress.mapStage record matches 2 run function halls/hub/main/functions/reset_map
