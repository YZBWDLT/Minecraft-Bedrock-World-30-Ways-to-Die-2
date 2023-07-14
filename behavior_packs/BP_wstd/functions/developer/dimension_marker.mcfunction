# 重置维度标记
execute @e[name=developerMode,scores={settings=0}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.not_developer_mode"}]}

execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[scores={dimension=0},c=1] ~~~ kill @e[name=overworld]
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[scores={dimension=0},c=1] ~~~ summon je:marker 9 9 3 as_overworld_point "overworld"
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[scores={dimension=1},c=1] ~~~ kill @e[name=nether]
execute @e[name=developerMode,scores={settings=1}] ~~~ execute @a[scores={dimension=1},c=1] ~~~ summon je:marker -2 12 -5 as_nether_point "nether"