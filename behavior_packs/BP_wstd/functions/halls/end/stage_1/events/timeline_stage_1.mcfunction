# ===== 第一阶段的时间线 =====

# --- 主时间线 ---

## [40~50] 粒子效果
execute if score timeline time matches 40..50 run particle minecraft:totem_particle -40 11 28
execute if score timeline time matches 40..50 run particle minecraft:totem_particle -40 11 27
execute if score timeline time matches 40..50 run particle minecraft:totem_particle -40 11 26
execute if score timeline time matches 40..50 as @a at @s run playsound random.orb @s ~~~

## [120] 模拟爆炸 | 粒子、音效、视角摇晃、清理方块、清除掉落物
execute if score timeline time matches 120 run particle wstd:explosion -40 10 28
execute if score timeline time matches 120 run particle wstd:explosion -40 10 27
execute if score timeline time matches 120 run particle wstd:explosion -40 10 26
execute if score timeline time matches 120 as @a at @s run playsound random.explode @s
execute if score timeline time matches 120 run camerashake add @a 1 1 positional
execute if score timeline time matches 120 run fill -40 12 28 -39 9 26 air [] destroy
execute if score timeline time matches 120 run kill @e[type=item]

## [120] 设置信标
execute if score timeline time matches 120 run setblock -47 9 28 beacon

# --- 检测玩家是否进入检测区 ---

execute if entity @a[x=-43,y=9,z=27,r=3] run function halls/end/stage_1/events/start_stage_2
