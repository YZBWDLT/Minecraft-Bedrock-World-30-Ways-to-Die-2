# ===== 快捷栏标题 =====

# --- 时间间隔 ---
# 大厅快捷栏标题为每2秒出现一次

## 进行倒计时 | 单位：刻，当时间达到40时，重置时间值以实现2秒一循环
scoreboard players add mainHall.actionbarTitleSecond time 1
execute unless score mainHall.actionbarTitleSecond time matches 0..39 run scoreboard players set mainHall.actionbarTitleSecond time 0
## 倒计时结束后，取随机数 | 此处认定1为一次结束，这是为了在刚开始时也能够正常显示
execute if score mainHall.actionbarTitleSecond time matches 1 run scoreboard players random mainHall.actionbarTitleRandom data 1 21

# --- 非速通模式 ---

execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint1"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 2 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint2"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 3 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint3"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 4 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint4"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 5 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint5"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 6 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint6"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 7 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint7"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 8 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint8"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 9 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint9"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 10 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint10"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 11 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint11"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 12 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint12"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 13 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint13"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 14 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint14"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 15 if score isNetease data matches 0 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint15"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 15 if score isNetease data matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"netease.actionbar.random_hint15"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 16 if score progress.easterEgg record matches -1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint16.easter_egg_not_found"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 16 if score progress.easterEgg record matches 0..10 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint16.easter_egg_found"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 17 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint17"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 18 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint18"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 19 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint19"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 20 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint20"}]}}]}
execute if score speedrunMode settings matches 0 if score mainHall.actionbarTitleSecond time matches 1 if score mainHall.actionbarTitleRandom data matches 21 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}}]}},{"translate":"actionbar.random_hint21"}]}}]}

# --- 速通模式 ---

execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint1"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 2 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint2"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 3 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint3"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 4 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint4"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 5 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint5"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 6 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint6"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 7 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint7"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 8 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint8"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 9 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint9"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 10 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint10"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 11 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint11"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 12 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint12"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 13 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint13"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 14 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint14"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 15 if score isNetease data matches 0 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint15"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 15 if score isNetease data matches 1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"netease.actionbar.random_hint15"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 16 if score progress.easterEgg record matches -1 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint16.easter_egg_not_found"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 16 if score progress.easterEgg record matches 0..10 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint16.easter_egg_found"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 17 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint17"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 18 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint18"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 19 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint19"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 20 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint20"}]}}]}
execute if score speedrunMode settings matches 1 if score mainHall.actionbarTitleRandom data matches 21 as @a run titleraw @s actionbar {"rawtext":[{"translate":"%%s - %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.hall"},{"translate":"subtitle.hall"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"currentMinute"}},{"score":{"objective":"time","name":"currentSecond"}},{"score":{"objective":"time","name":"tick"}}]}},{"translate":"actionbar.random_hint21"}]}}]}
