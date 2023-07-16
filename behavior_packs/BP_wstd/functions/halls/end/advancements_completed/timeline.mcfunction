# 结束特效时间线

## ===== 当active.timeline=2时，玩家刚到达大厅，触发初始化函数，检测玩家到达结束屋 =====
execute @e[name=timeline,scores={active=2}] ~~~ execute @a[x=-41,y=9,z=27,r=1.5] ~~~ scoreboard players set @e[name=timeline] active 1
execute @e[name=timeline,scores={active=2}] ~~~ execute @a[x=-46,y=9,z=27,r=3] ~~~ scoreboard players set @e[name=timeline] active 1

## ===== 当active.timeline=1时，和作者对话 =====
## 定格玩家视角
execute @e[name=timeline,scores={active=1,time=1..20}] ~~~ tp @a -41 9 27 90 30
execute @e[name=timeline,scores={active=1,time=21..50}] ~~~ tp @a[rxm=0] -41 9 27 ~~-1
execute @e[name=timeline,scores={active=1,time=21..50}] ~~~ tp @a[rx=0] -41 9 27 facing @e[type=wstd:creator,c=1]
execute @e[name=timeline,scores={active=1,time=50..}] ~~~ tp @a -41 9 27 facing @e[type=wstd:creator,c=1]

## 时间线
execute @e[name=timeline,scores={time=1,active=1}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 0.6

execute @e[name=timeline,scores={time=6,active=1}] ~~~ setblock -46 8 27 gold_block

execute @e[name=timeline,scores={time=12,active=1}] ~~~ fill -45 8 26 -47 8 28 gold_block
execute @e[name=timeline,scores={time=12,active=1}] ~~~ setblock -46 8 27 diamond_block

execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -44 8 25 gold_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -44 8 27 gold_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -44 8 29 gold_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -48 8 25 gold_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -48 8 27 gold_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -48 8 29 gold_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -46 8 25 gold_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -46 8 29 gold_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -46 8 28 diamond_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -47 8 27 diamond_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -46 8 26 diamond_block
execute @e[name=timeline,scores={time=18,active=1}] ~~~ setblock -45 8 27 diamond_block

execute @e[name=timeline,scores={time=80,active=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line1"}]}
execute @e[name=timeline,scores={time=80,active=1}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=160,active=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line2"}]}
execute @e[name=timeline,scores={time=160,active=1}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=240,active=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line3"}]}
execute @e[name=timeline,scores={time=240,active=1}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=320,active=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line4","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=timeline,scores={time=320,active=1}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=400,active=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line5"}]}
execute @e[name=timeline,scores={time=400,active=1}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=480,active=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line6"}]}
execute @e[name=timeline,scores={time=480,active=1}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=560,active=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line7"}]}
execute @e[name=timeline,scores={time=560,active=1}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=640,active=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line8","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=timeline,scores={time=640,active=1}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=720,active=1}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line9"}]}
execute @e[name=timeline,scores={time=720,active=1}] ~~~ execute @a ~~~ playsound random.pop @s

## 转到timeline的active=3，同时清空时间线
execute @e[name=timeline,scores={time=800,active=1}] ~~~ function halls/end/advancements_completed/change_timeline

## ===== 当active.timeline=3时，正式开始结束特效 =====

## 增加时间线 | 因为timeline只有在active.timeline=1时才会使时间线流逝，这里人为让其为3时也流逝
scoreboard players add @e[name=timeline,scores={time=0..1221,active=3}] time 1

## 调整时间
execute @e[name=timeline,scores={time=0..120,active=3}] ~~~ time add 100

## 传送玩家并定格视角
execute @e[name=timeline,scores={time=120..399,active=3}] ~~~ execute @a[x=-39,y=9,z=24,dx=69,dy=4,dz=5] ~~~ tp @s ~0.4 9 27 facing 38 10 27
execute @e[name=timeline,scores={time=120..399,active=3}] ~~~ execute @a[x=31,y=9,z=27,r=1] ~~~ tp @s 31 9 27 facing 38 10 27

## 巴豆
execute @e[name=timeline,scores={time=400..539,active=3}] ~~~ execute @e[name=rotater] ~~~ tp @s ~~~ ~0.25
execute @e[name=timeline,scores={time=400..539,active=3}] ~~~ execute @e[name=rotater] ~~~ tp @a ^^3^8 facing @s
## 南瓜汁
execute @e[name=timeline,scores={time=540..679,active=3}] ~~~ execute @e[name=rotater] ~~~ tp @s ~~~ ~-0.5
execute @e[name=timeline,scores={time=540..679,active=3}] ~~~ execute @e[name=rotater] ~~~ tp @a ^^1^3 facing @s
## 祉语
execute @e[name=timeline,scores={time=680..819,active=3}] ~~~ execute @e[name=rotater] ~~~ tp @s ~~~ ~-0.5
execute @e[name=timeline,scores={time=680..819,active=3}] ~~~ execute @e[name=rotater] ~~~ tp @a ^^^4 facing @s
## 全图
execute @e[name=timeline,scores={time=820..1220,active=3}] ~~~ execute @e[name=rotater] ~~~ tp @s ~~~ ~0.9
execute @e[name=timeline,scores={time=820..1220,active=3}] ~~~ execute @e[name=rotater] ~~~ tp @a ^^16^22 facing @s
execute @e[name=timeline,scores={time=820..1220,active=3}] ~~~ time add 60
## 烟花
execute @e[name=timeline,scores={time=1070..,active=3}] ~~~ execute @e[name=ticker,scores={time=!1..4,time=!6..9,time=!11..14,time=!16..19}] ~~~ scoreboard players add @e[name=counter] backend 1
execute @e[name=timeline,scores={time=1070..,active=3}] ~~~ scoreboard players set @e[name=counter,scores={backend=!1..15}] backend 1
execute @e[name=timeline,scores={time=1070..,active=3}] ~~~ execute @e[name=ticker,scores={time=!1..4,time=!6..9,time=!11..14,time=!16..19}] ~~~ function halls/end/advancements_completed/firework_launcher

## 使玩家隐身
execute @e[name=timeline,scores={active=3}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ effect @a invisibility 30 0 true

## 时间线布局
### === 初始化 ===
execute @e[name=timeline,scores={time=1,active=3}] ~~~ tp @a -8 29 27
execute @e[name=timeline,scores={time=1,active=3}] ~~~ function system/music/play_firework_show
execute @e[name=timeline,scores={time=1,active=3}] ~~~ titleraw @a times 0 200 0
execute @e[name=timeline,scores={time=1,active=3}] ~~~ scoreboard objectives setdisplay sidebar
execute @e[name=timeline,scores={time=1,active=3}] ~~~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.end_1"}]}

### === 大厅“月步” ===
execute @e[name=timeline,scores={time=120,active=3}] ~~~ tp @a -39 9 27
execute @e[name=timeline,scores={time=120,active=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute @e[name=timeline,scores={time=120,active=3}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_1"}]}
execute @e[name=timeline,scores={time=120,active=3}] ~~~ execute @a ~~~ playsound random.orb @s ~~~

execute @e[name=timeline,scores={time=220,active=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.map_name"}]}
execute @e[name=timeline,scores={time=220,active=3}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_2"}]}
execute @e[name=timeline,scores={time=220,active=3}] ~~~ execute @a ~~~ playsound random.orb @s ~~~

execute @e[name=timeline,scores={time=320,active=3}] ~~~ execute @e[name=isNetease,scores={settings=0}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.map_name.completed"}]}
execute @e[name=timeline,scores={time=320,active=3}] ~~~ execute @e[name=isNetease,scores={settings=1}] ~~~ titleraw @a title {"rawtext":[{"translate":"netease.title.map_name_completed"}]}
execute @e[name=timeline,scores={time=320,active=3}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_3"}]}
execute @e[name=timeline,scores={time=320,active=3}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 0.75
#### 替换logo
execute @e[name=timeline,scores={time=320,active=3}] ~~~ fill 47 6 21 48 20 33 air[] destroy
execute @e[name=timeline,scores={time=320,active=3}] ~~~ kill @e[type=item]
execute @e[name=timeline,scores={time=321,active=3}] ~~~ structure load logo_completed 47 6 21

### === 其他测试员 ===
#### 进度房间 巴豆
execute @e[name=timeline,scores={time=400,active=3}] ~~~ summon wstd:creator -106 19 18 become_bd
execute @e[name=timeline,scores={time=400,active=3}] ~~~ summon je:marker "rotater" -106 19 18
execute @e[name=timeline,scores={time=400,active=3}] ~~~ tp @e[name=rotater] -106 19 18 facing -101 19 13
execute @e[name=timeline,scores={time=400,active=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute @e[name=timeline,scores={time=400,active=3}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_4"}]}
execute @e[name=timeline,scores={time=400,active=3}] ~~~ execute @a ~~~ playsound random.orb @s ~~~
#### 彩蛋3 南瓜汁
execute @e[name=timeline,scores={time=540,active=3}] ~~~ summon wstd:creator -34 23 -88 become_ngz
execute @e[name=timeline,scores={time=540,active=3}] ~~~ tp @e[name=rotater] -34 23 -88 facing -34 23 -81
execute @e[name=timeline,scores={time=540,active=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute @e[name=timeline,scores={time=540,active=3}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_5"}]}
execute @e[name=timeline,scores={time=540,active=3}] ~~~ execute @a ~~~ playsound random.orb @s ~~~
#### 作者平台 祉语
execute @e[name=timeline,scores={time=680,active=3}] ~~~ fill -35 21 -25 -35 22 -25 air
execute @e[name=timeline,scores={time=680,active=3}] ~~~ setblock -34 22 -21 lantern
execute @e[name=timeline,scores={time=680,active=3}] ~~~ summon wstd:creator -35 21 -25 become_zy
execute @e[name=timeline,scores={time=680,active=3}] ~~~ tp @e[name=rotater] -35 21 -25 facing -31 21 -29
execute @e[name=timeline,scores={time=680,active=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute @e[name=timeline,scores={time=680,active=3}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_6"}]}
execute @e[name=timeline,scores={time=680,active=3}] ~~~ execute @a ~~~ playsound random.orb @s ~~~
#### 全图 游玩时间
execute @e[name=timeline,scores={time=820,active=3}] ~~~ tp @e[name=rotater] -8 29 27 facing 0 5 0
execute @e[name=timeline,scores={time=820,active=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute @e[name=timeline,scores={time=820,active=3}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_7","with":{"rawtext":[{"score":{"objective":"stats","name":"@e[name=endTimeMinute]"}},{"score":{"objective":"stats","name":"@e[name=endTimeSecond]"}}]}}]}
execute @e[name=timeline,scores={time=820,active=3}] ~~~ execute @a ~~~ playsound random.orb @s ~~~
#### 文字 此外还有
execute @e[name=timeline,scores={time=1020,active=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute @e[name=timeline,scores={time=1020,active=3}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_8"}]}
execute @e[name=timeline,scores={time=1020,active=3}] ~~~ execute @a ~~~ playsound random.orb @s ~~~
#### 烟花秀
execute @e[name=timeline,scores={time=1070,active=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.empty"}]}
execute @e[name=timeline,scores={time=1070,active=3}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_9"}]}
execute @e[name=timeline,scores={time=1070,active=3}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 0.7

execute @e[name=timeline,scores={time=1219,active=3}] ~~~ titleraw @a times 0 60 0

#### 结束语
execute @e[name=timeline,scores={time=1220,active=3}] ~~~ titleraw @a title {"rawtext":[{"translate":"title.end_10"}]}
execute @e[name=timeline,scores={time=1220,active=3}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.end_10"}]}
execute @e[name=timeline,scores={time=1220,active=3}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 0.7
execute @e[name=timeline,scores={time=1220,active=3}] ~~~ scoreboard players set @e[name=mapCompleted] stats 2
execute @e[name=timeline,scores={time=1220,active=3}] ~~~ scoreboard players add mapCompletedTimes record 1

execute @e[name=timeline,scores={time=1221,active=3}] ~~~ tp @a -8 29 27
execute @e[name=timeline,scores={time=1221,active=3}] ~~~ kill @e[name=rotater]
execute @e[name=timeline,scores={time=1221,active=3}] ~~~ kill @e[type=wstd:creator]
execute @e[name=timeline,scores={time=1221,active=3}] ~~~ give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

## ===== 当active.timeline=4时，和作者对话 =====

## 增加时间线 | 因为timeline只有在active.timeline=1时才会使时间线流逝，这里人为让其为4时也流逝
scoreboard players add @e[name=timeline,scores={time=0..806,active=4}] time 1

## 定格玩家视角
execute @e[name=timeline,scores={active=4}] ~~~ tp @a -41 9 27 facing -46 9 27

## 时间线
execute @e[name=timeline,scores={time=1,active=4}] ~~~ summon wstd:creator -46 9 27 become_lt
execute @e[name=timeline,scores={time=1,active=4}] ~~~ time set 6000
execute @e[name=timeline,scores={time=1,active=4}] ~~~ function system/music/play_end
execute @e[name=timeline,scores={time=2,active=4}] ~~~ function system/music/queue_maingame

execute @e[name=timeline,scores={time=80,active=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line10"}]}
execute @e[name=timeline,scores={time=80,active=4}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=160,active=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line11"}]}
execute @e[name=timeline,scores={time=160,active=4}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=240,active=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line12"}]}
execute @e[name=timeline,scores={time=240,active=4}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=320,active=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line13"}]}
execute @e[name=timeline,scores={time=320,active=4}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=400,active=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line14"}]}
execute @e[name=timeline,scores={time=400,active=4}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=480,active=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line15"}]}
execute @e[name=timeline,scores={time=480,active=4}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=560,active=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line16"}]}
execute @e[name=timeline,scores={time=560,active=4}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=640,active=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line17"}]}
execute @e[name=timeline,scores={time=640,active=4}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=720,active=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.end.advancements_completed.line18"}]}
execute @e[name=timeline,scores={time=720,active=4}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=800,active=4}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.author_left_game"}]}
execute @e[name=timeline,scores={time=800,active=4}] ~~~ execute @a ~~~ playsound random.pop @s
execute @e[name=timeline,scores={time=800,active=4}] ~~~ tp @e[x=-46,y=9,z=27,r=2,type=wstd:creator] 5 5 5

execute @e[name=timeline,scores={time=805,active=4}] ~~~ kill @e[x=5,y=5,z=5,r=2,type=wstd:creator]

## 转到timeline的active=3，同时清空时间线
execute @e[name=timeline,scores={time=806,active=4}] ~~~ function halls/end/advancements_completed/quit_level
