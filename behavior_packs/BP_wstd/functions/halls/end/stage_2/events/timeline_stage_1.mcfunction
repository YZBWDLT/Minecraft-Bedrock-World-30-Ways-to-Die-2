# ===== 第一阶段时间线 =====

# --- [1~50] 面向视角设定 ---

## 在1~20刻，看替换方块的动画，正常锁定视角
## 在21~50刻，逐渐抬头，直到面向作者 | 初值为~~-3~，30刻后变为~~~，每刻~~0.1~
execute if score timeline time matches 21..50 as @e[name=facingPosition] at @s run tp @s ~~0.1~

# --- [1~50] 方块动画 ---
## 音效
execute if score timeline time matches 1 as @a at @s run playsound random.levelup @s ~~~ 1 0.6

## 替换方块
execute if score timeline time matches 6 run setblock -46 8 27 gold_block
execute if score timeline time matches 12 run fill -45 8 26 -47 8 28 gold_block
execute if score timeline time matches 12 run setblock -46 8 27 diamond_block
execute if score timeline time matches 18 run setblock -44 8 25 gold_block
execute if score timeline time matches 18 run setblock -44 8 27 gold_block
execute if score timeline time matches 18 run setblock -44 8 29 gold_block
execute if score timeline time matches 18 run setblock -48 8 25 gold_block
execute if score timeline time matches 18 run setblock -48 8 27 gold_block
execute if score timeline time matches 18 run setblock -48 8 29 gold_block
execute if score timeline time matches 18 run setblock -46 8 25 gold_block
execute if score timeline time matches 18 run setblock -46 8 29 gold_block
execute if score timeline time matches 18 run setblock -46 8 28 diamond_block
execute if score timeline time matches 18 run setblock -47 8 27 diamond_block
execute if score timeline time matches 18 run setblock -46 8 26 diamond_block
execute if score timeline time matches 18 run setblock -45 8 27 diamond_block

# --- [800] 进入时间线第二阶段 ---
execute if score timeline time matches 800 run function halls/end/stage_2/events/start_stage_2
