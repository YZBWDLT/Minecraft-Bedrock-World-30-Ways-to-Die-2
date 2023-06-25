# 释放粒子
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:green -68 21 -23
execute @e[name=ticker,scores={time=0}] ~~~ particle wstd:red -68 21 -27

# -68 21 -23/-27
# 在第0个问题下的选择
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_0.right"}]}
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 3
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ function levels/easter_egg_2/question_1
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_0.wrong"}]}
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 4
execute @e[name=counter,scores={backend=0}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ function levels/easter_egg_2/quit_level

# 在第1个问题下的选择
execute @e[name=counter,scores={backend=1}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_1.right"}]}
execute @e[name=counter,scores={backend=1}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 4
execute @e[name=counter,scores={backend=1}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ function levels/easter_egg_2/quit_level
execute @e[name=counter,scores={backend=1}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_1.wrong"}]}
execute @e[name=counter,scores={backend=1}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 3
execute @e[name=counter,scores={backend=1}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ function levels/easter_egg_2/question_2

# 在第2个问题下的选择
execute @e[name=counter,scores={backend=2}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_2.right"}]}
execute @e[name=counter,scores={backend=2}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 3
execute @e[name=counter,scores={backend=2}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ function levels/easter_egg_2/question_3
execute @e[name=counter,scores={backend=2}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_2.wrong"}]}
execute @e[name=counter,scores={backend=2}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 4
execute @e[name=counter,scores={backend=2}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ function levels/easter_egg_2/quit_level

# 在第3个问题下的选择
execute @e[name=counter,scores={backend=3}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_3.right"}]}
execute @e[name=counter,scores={backend=3}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 3
execute @e[name=counter,scores={backend=3}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ function levels/easter_egg_2/question_4
execute @e[name=counter,scores={backend=3}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_3.wrong"}]}
execute @e[name=counter,scores={backend=3}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 4
execute @e[name=counter,scores={backend=3}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ function levels/easter_egg_2/quit_level

# 在第4个问题下的选择
execute @e[name=counter,scores={backend=4}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_4.right"}]}
execute @e[name=counter,scores={backend=4}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 4
execute @e[name=counter,scores={backend=4}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ function levels/easter_egg_2/quit_level
execute @e[name=counter,scores={backend=4}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_4.wrong"}]}
execute @e[name=counter,scores={backend=4}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 3
execute @e[name=counter,scores={backend=4}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ function levels/easter_egg_2/question_5

# 在第5个问题下的选择
execute @e[name=counter,scores={backend=5}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_5.right"}]}
execute @e[name=counter,scores={backend=5}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 3
execute @e[name=counter,scores={backend=5}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ kill @a
execute @e[name=counter,scores={backend=5}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ tp @a -62 21 -25
execute @e[name=counter,scores={backend=5}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ tellraw @a {"rawtext":[{"translate":"chat.easter_egg_2.question_5.wrong"}]}
execute @e[name=counter,scores={backend=5}] ~~~ execute @a[x=-68,y=21,z=-23,r=1] ~~~ scoreboard players set @e[name=soundPlayer] active 4
execute @e[name=counter,scores={backend=5}] ~~~ execute @a[x=-68,y=21,z=-27,r=1] ~~~ function levels/easter_egg_2/quit_level