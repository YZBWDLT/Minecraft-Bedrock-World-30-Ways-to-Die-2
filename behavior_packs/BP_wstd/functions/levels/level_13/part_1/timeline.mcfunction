# 时间线

# 检测灯是否亮起，亮起后替换岩浆块为岩浆
execute @a ~~~ detect 3 21 65 lit_redstone_lamp -1 execute @a ~~~ detect 3 25 60 magma -1 playsound random.glass @s
execute @a ~~~ detect 3 21 65 lit_redstone_lamp -1 execute @a ~~~ detect 3 25 60 magma -1 setblock 3 25 60 minecraft:flowing_lava
