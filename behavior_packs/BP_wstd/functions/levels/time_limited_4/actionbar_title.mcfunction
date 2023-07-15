## 第4关快捷栏标题

execute @e[name=timeline,scores={active=2}] ~~~ titleraw @a actionbar {"rawtext":[{"translate":"actionbar.use_next_to_start"}]}

## === 未开启开发者模式时 ===
execute @e[name=timeline,scores={active=1}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=speedrunMode,scores={settings=0}] ~~~ execute @a ~~~ titleraw @s actionbar {"rawtext":[{"translate":"%%s %%s | §7%%s\n%%s","with":{"rawtext":[{"translate":"title.time_limited_4"},{"translate":"subtitle.time_limited_4"},{"translate":"actionbar.description.time_limited_4"},{"translate":"actionbar.remaining_time","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=remainingTime]"}}]}}]}}]}
execute @e[name=timeline,scores={active=1}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=speedrunMode,scores={settings=1}] ~~~ execute @a ~~~ titleraw @s actionbar {"rawtext":[{"translate":"%%s %%s | %%s\n%%s","with":{"rawtext":[{"translate":"title.time_limited_4"},{"translate":"subtitle.time_limited_4"},{"translate":"actionbar.time_played.speedrun_mode","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}},{"score":{"objective":"time","name":"@e[name=playedSecond]"}},{"score":{"objective":"time","name":"@e[name=ticker]"}}]}},{"translate":"actionbar.remaining_time","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=remainingTime]"}}]}}]}}]}

## === 开启开发者模式时 ===
execute @e[name=timeline,scores={active=1}] ~~~ execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a ~~~ titleraw @s actionbar {"rawtext":[{"translate":"%%s\n§r%%s","with":{"rawtext":[{"translate":"%%s %%s | §7%%s\n%%s","with":{"rawtext":[{"translate":"title.time_limited_4"},{"translate":"subtitle.time_limited_4"},{"translate":"actionbar.description.time_limited_4"},{"translate":"actionbar.remaining_time","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=remainingTime]"}}]}}]}},{"translate":"%%s | %%s | %%s | %%s","with":{"rawtext":[{"translate":"actionbar.developer.oplevel","with":{"rawtext":[{"score":{"objective":"oplevel","name":"@s"}}]}},{"translate":"actionbar.developer.level_id","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}},{"translate":"actionbar.developer.time_played","with":{"rawtext":[{"score":{"objective":"time","name":"@e[name=playedMinute]"}},{"score":{"name":"@e[name=playedSecond]","objective":"time"}}]}},{"translate":"actionbar.developer.timeline","with":{"rawtext":[{"score":{"objective":"active","name":"@e[name=timeline]"}},{"score":{"name":"@e[name=timeline]","objective":"time"}}]}}]}}]}}]}