# 时间线

# 当左侧频闪10次时，亮起右侧的灯
execute @e[name=counter,scores={backend=10..}] ~~~ setblock -54 20 60 redstone_torch ["torch_facing_direction":"north"]

# 检测灯是否亮起，亮起后替换岩浆块为岩浆
execute @a ~~~ detect -46 21 55 lit_redstone_lamp -1 execute @a ~~~ detect -49 25 60 magma -1 playsound random.glass @s
execute @a ~~~ detect -46 21 55 lit_redstone_lamp -1 execute @a ~~~ detect -49 25 60 magma -1 setblock -49 25 60 minecraft:flowing_lava