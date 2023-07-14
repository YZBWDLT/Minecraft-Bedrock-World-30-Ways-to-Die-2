# 地图开幕

execute @e[name=timeline,scores={time=40}] ~~~ titleraw @a title { "rawtext": [ { "translate": "title.open_1" } ] }
execute @e[name=timeline,scores={time=40}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2

execute @e[name=timeline,scores={time=120}] ~~~ titleraw @a title { "rawtext": [ { "translate": "title.open_2" } ] }
execute @e[name=timeline,scores={time=120}] ~~~ titleraw @a subtitle { "rawtext": [ { "translate": "subtitle.open_1" } ] }
execute @e[name=timeline,scores={time=120}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2

execute @e[name=timeline,scores={time=200}] ~~~ titleraw @a title { "rawtext": [ { "translate": "title.open_2" } ] }
execute @e[name=timeline,scores={time=200}] ~~~ titleraw @a subtitle { "rawtext": [ { "translate": "subtitle.open_2" } ] }
execute @e[name=timeline,scores={time=200}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2

execute @e[name=timeline,scores={time=280}] ~~~ titleraw @a title { "rawtext": [ { "translate": "title.open_2" } ] }
execute @e[name=timeline,scores={time=280}] ~~~ execute @e[name=isNetease,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.open.music.on"}]}
execute @e[name=timeline,scores={time=280}] ~~~ execute @e[name=isNetease,scores={settings=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.open.music.off"}]}
execute @e[name=timeline,scores={time=280}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2

execute @e[name=timeline,scores={time=300}] ~~~ titleraw @a actionbar { "rawtext": [ { "translate": "actionbar.open_1" } ] }
execute @e[name=timeline,scores={time=300}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ gamemode adventure @a
execute @e[name=timeline,scores={time=300}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 2

execute @e[name=timeline,scores={time=320}] ~~~ titleraw @a actionbar { "rawtext": [ { "translate": "actionbar.open_2" } ] }
execute @e[name=timeline,scores={time=320}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a
execute @e[name=timeline,scores={time=320}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 2

execute @e[name=timeline,scores={time=340}] ~~~ titleraw @a actionbar { "rawtext": [ { "translate": "actionbar.open_3" } ] }
execute @e[name=timeline,scores={time=340}] ~~~ difficulty hard
execute @e[name=timeline,scores={time=340}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 2

execute @e[name=timeline,scores={time=360}] ~~~ titleraw @a actionbar { "rawtext": [ { "translate": "actionbar.open_4" } ] }
execute @e[name=timeline,scores={time=360}] ~~~ time set 6000
execute @e[name=timeline,scores={time=360}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 2

execute @e[name=timeline,scores={time=380}] ~~~ titleraw @a actionbar { "rawtext": [ { "translate": "actionbar.open_5" } ] }
execute @e[name=timeline,scores={time=380}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ scoreboard players set @e[name=gameruleLocker] settings 1
execute @e[name=timeline,scores={time=380}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 2

execute @e[name=timeline,scores={time=400}] ~~~ titleraw @a actionbar { "rawtext": [ { "translate": "actionbar.open_6" } ] }
execute @e[name=timeline,scores={time=400}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 2

execute @e[name=timeline,scores={time=420}] ~~~ function halls/open/next_step