# 教程关卡

## 第一阶段
execute @e[name=timeline,scores={time=1}] ~~~ fill 41 21 -21 49 25 -29 air
execute @e[name=timeline,scores={time=1}] ~~~ tp @a 45 22 -25
execute @e[name=timeline,scores={time=1}] ~~~ spawnpoint @a 45 22 -25
execute @e[name=timeline,scores={time=1}] ~~~ fill 41 21 -25 41 22 -25 air
execute @e[name=timeline,scores={time=1}] ~~~ structure load level_0 40 20 -30
execute @e[name=timeline,scores={time=1}] ~~~ structure load tutorial_cb 44 21 -29

execute @e[name=timeline,scores={time=40}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line1","with":{"rawtext":[{"selector":"@s"}]}}]}
execute @e[name=timeline,scores={time=40}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=120}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line2"}]}
execute @e[name=timeline,scores={time=120}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=200}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line3"}]}
execute @e[name=timeline,scores={time=200}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2
execute @e[name=timeline,scores={time=200}] ~~~ structure load tutorial_chest 41 21 -25
execute @e[name=timeline,scores={time=200}] ~~~ particle wstd:chest_appear 41 21 -25

execute @e[name=timeline,scores={time=280}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line4"}]}
execute @e[name=timeline,scores={time=280}] ~~~ execute @a ~~~ playsound random.pop @s
### 停止计时，等待玩家下一步操作
execute @e[name=timeline,scores={time=281}] ~~~ scoreboard players set @s active 2
### 重激活进入第二部分
execute @a[hasitem={item=stone_button}] ~~~ execute @e[name=timeline,scores={time=200..299}] ~~~ scoreboard players set @s active 1
execute @a[hasitem={item=stone_button}] ~~~ execute @e[name=timeline,scores={time=200..299}] ~~~ scoreboard players set @s time 300

execute @e[name=timeline,scores={time=301}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line5"}]}

### 停止计时，等待玩家下一步操作
execute @e[name=timeline,scores={time=341}] ~~~ scoreboard players set @s active 2

execute @e[name=timeline,scores={time=440}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line6"}]}
execute @e[name=timeline,scores={time=440}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=520}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line7"}]}
execute @e[name=timeline,scores={time=520}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=600}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line8"}]}
execute @e[name=timeline,scores={time=600}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2
execute @e[name=timeline,scores={time=600}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

### 停止计时，等待玩家下一步操作
execute @e[name=timeline,scores={time=601}] ~~~ scoreboard players set @s active 2

execute @e[name=timeline,scores={time=740}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line9"}]}
execute @e[name=timeline,scores={time=740}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=820}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line10"}]}
execute @e[name=timeline,scores={time=820}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2
execute @e[name=timeline,scores={time=820}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

### 停止计时，等待玩家下一步操作
execute @e[name=timeline,scores={time=821}] ~~~ scoreboard players set @s active 2

execute @e[name=timeline,scores={time=940}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line11"}]}
execute @e[name=timeline,scores={time=940}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=1020}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line12"}]}
execute @e[name=timeline,scores={time=1020}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=1100}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line13"}]}
execute @e[name=timeline,scores={time=1100}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2
execute @e[name=timeline,scores={time=1100}] ~~~ give @a wstd:skip 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

execute @e[name=timeline,scores={time=1180}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line14"}]}
execute @e[name=timeline,scores={time=1180}] ~~~ execute @a ~~~ playsound random.pop @s

### 停止计时，等待玩家下一步操作
execute @e[name=timeline,scores={time=1181}] ~~~ scoreboard players set @s active 2

execute @e[name=timeline,scores={time=1200..1240}] ~~~ kill @e[type=item]
execute @e[name=timeline,scores={time=1240}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line15"}]}
execute @e[name=timeline,scores={time=1240}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=1320}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line16"}]}
execute @e[name=timeline,scores={time=1320}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2
execute @e[name=timeline,scores={time=1320}] ~~~ give @a wstd:reset 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

execute @e[name=timeline,scores={time=1400}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line17"}]}
execute @e[name=timeline,scores={time=1400}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2
execute @e[name=timeline,scores={time=1400}] ~~~ give @a wstd:quit 1 0 {"item_lock": {"mode":"lock_in_inventory"}}

execute @e[name=timeline,scores={time=1480}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line18"}]}
execute @e[name=timeline,scores={time=1480}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=1560}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line19"}]}
execute @e[name=timeline,scores={time=1560..1563}] ~~~ execute @a ~~~ playsound random.pop @s

execute @e[name=timeline,scores={time=1640}] ~~~ execute @a ~~~ tellraw @s {"rawtext":[{"translate":"chat.level_tutorial.line20"}]}
execute @e[name=timeline,scores={time=1640}] ~~~ execute @a ~~~ playsound random.pop @s

## 时间轴结束，终止该进程，进入下一进程
execute @e[name=timeline,scores={time=1720}] ~~~ scoreboard players set @s active 0
execute @e[name=timeline,scores={time=1720}] ~~~ function halls/read_rules/start_level