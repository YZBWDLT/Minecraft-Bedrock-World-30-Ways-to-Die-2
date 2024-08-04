# ===== 第二阶段时间线 =====

# --- [0~120] 进行时间调整，将时间调整为半夜 ---
execute if score timeline time matches 0..120 run time add 100

# --- [120~399] 大厅内移动 ---

## 视角定格 | 在210刻内，从x=-38 -> x=31，共移动70格，每刻移动x=+0.333格
execute if score timeline time matches 120..330 as @e[name=playerPosition] at @s run tp @s ~0.333~~

## 替换logo
execute if score timeline time matches 319 run fill 47 6 21 48 20 33 air[] destroy
execute if score timeline time matches 319 run kill @e[type=item]
execute if score timeline time matches 320 run structure load system:logo_completed 47 6 21

# --- [400~539] 进度房间 - 巴豆 ---

## 视角定格
execute if score timeline time matches 400 run tp @e[name=facingPosition] -106 19 18 facing -101 19 13
execute if score timeline time matches 400..539 as @e[name=facingPosition] at @s run tp @s ~~~ ~0.25
execute if score timeline time matches 400..539 as @e[name=facingPosition] at @s positioned ^^3^8 run tp @e[name=playerPosition] ~~~ facing @s

## 召唤NPC实体
execute if score timeline time matches 400 run summon wstd:creator -106 19 18 facing @e[name=playerPosition,c=1] become_bd "Andy7343"

# --- [540~679] 限时第2关 - 南瓜汁 ---

## 视角定格
execute if score timeline time matches 540 run tp @e[name=facingPosition] -34 23 -88 facing -34 23 -81
execute if score timeline time matches 540..679 as @e[name=facingPosition] at @s run tp @s ~~~ ~-0.5
execute if score timeline time matches 540..679 as @e[name=facingPosition] at @s positioned ^^1^3 run tp @e[name=playerPosition] ~~~ facing @s

## 召唤NPC实体
execute if score timeline time matches 540 run summon wstd:creator -34 23 -88 facing @e[name=playerPosition,c=1] become_ngz "PumpkinJui"

# --- [680~819] 彩蛋第1关 - 祉语 ---

## 视角定格
execute if score timeline time matches 680 run tp @e[name=facingPosition] -35 21 -25 facing -31 21 -29
execute if score timeline time matches 680..819 as @e[name=facingPosition] at @s run tp @s ~~~ ~-0.5
execute if score timeline time matches 680..819 as @e[name=facingPosition] at @s positioned ^^^4 run tp @e[name=playerPosition] ~~~ facing @s

## 召唤NPC实体
execute if score timeline time matches 680 run summon wstd:creator -35 21 -25 facing @e[name=playerPosition,c=1] become_zy "xhduoduobaby"

## 清空彩蛋第1关的树并加上照明
execute if score timeline time matches 680 run fill -35 21 -25 -35 22 -25 air
execute if score timeline time matches 680 run setblock -34 22 -21 lantern

# --- [820~1220] 全地图预览 ---

## 视角定格
execute if score timeline time matches 820 run tp @e[name=facingPosition] -8 29 27 facing 0 5 0
execute if score timeline time matches 820..1220 as @e[name=facingPosition] at @s run tp @s ~~~ ~0.9
execute if score timeline time matches 820..1220 as @e[name=facingPosition] at @s positioned ^^16^22 run tp @e[name=playerPosition] ~~~ facing @s

## 时间流逝过正好一天
execute if score timeline time matches 820..1220 run time add 60

# --- [1221] 动画结束，玩家参观烟花秀 ---

## 将玩家传送到大厅上
execute if score timeline time matches 1221 run tp @a -8 29 27
## 清除作者NPC
execute if score timeline time matches 1221 run kill @e[type=wstd:creator]
## 给予玩家返回物品
execute if score timeline time matches 1221 run give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# --- [1070~] 放烟花 ---

## 每5刻放一次烟花
execute if score timeline time matches 1070.. run scoreboard players add endStage2.fireworkTimer time 1
execute if score timeline time matches 1070.. if score endStage2.fireworkTimer time matches !0..4 run scoreboard players set endStage2.fireworkTimer time 0
execute if score timeline time matches 1070.. if score endStage2.fireworkTimer time matches 4 run function halls/end/stage_2/events/launch_firework
