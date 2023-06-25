# 地图开幕

execute @e[name=timeline,scores={time=40}] ~~~ title @a title §c§l30种死法 §6§l2
execute @e[name=timeline,scores={time=40}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2

execute @e[name=timeline,scores={time=120}] ~~~ title @a title §f
execute @e[name=timeline,scores={time=120}] ~~~ title @a subtitle §e一只卑微的量筒 §f制作
execute @e[name=timeline,scores={time=120}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2

execute @e[name=timeline,scores={time=200}] ~~~ title @a title §f
execute @e[name=timeline,scores={time=200}] ~~~ title @a subtitle §b极筑工坊 §f出品
execute @e[name=timeline,scores={time=200}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2

execute @e[name=timeline,scores={time=280}] ~~~ title @a title §f
execute @e[name=timeline,scores={time=280}] ~~~ execute @e[name=isNetease,scores={settings=0}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.open.music.on"}]}
execute @e[name=timeline,scores={time=280}] ~~~ execute @e[name=isNetease,scores={settings=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"subtitle.open.music.off"}]}
execute @e[name=timeline,scores={time=280}] ~~~ execute @a ~~~ playsound random.orb @s ~~~ 1 2

execute @e[name=timeline,scores={time=300}] ~~~ title @a actionbar ===请稍候，我们正在进行地图初始化... 目前任务:[§e§l更改游戏模式§r]===
execute @e[name=timeline,scores={time=300}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ gamemode adventure @a
execute @e[name=timeline,scores={time=300}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 2

execute @e[name=timeline,scores={time=320}] ~~~ title @a actionbar ===请稍候，我们正在进行地图初始化... 目前任务:[§e§l清除物品§r]===
execute @e[name=timeline,scores={time=320}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a
execute @e[name=timeline,scores={time=320}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 2

execute @e[name=timeline,scores={time=340}] ~~~ title @a actionbar ===请稍候，我们正在进行地图初始化... 目前任务:[§e§l调整游戏难度§r]===
execute @e[name=timeline,scores={time=340}] ~~~ difficulty hard
execute @e[name=timeline,scores={time=340}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 2

execute @e[name=timeline,scores={time=360}] ~~~ title @a actionbar ===请稍候，我们正在进行地图初始化... 目前任务:[§e§l调整时间§r]===
execute @e[name=timeline,scores={time=360}] ~~~ time set 6000
execute @e[name=timeline,scores={time=360}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 2

execute @e[name=timeline,scores={time=380}] ~~~ title @a actionbar ===请稍候，我们正在进行地图初始化... 目前任务:[§e§l调整gamerule§r]===
execute @e[name=timeline,scores={time=380}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ scoreboard players set @e[name=gameruleLocker] settings 1
execute @e[name=timeline,scores={time=380}] ~~~ execute @a ~~~ playsound random.pop @s ~~~ 1 2

execute @e[name=timeline,scores={time=400}] ~~~ title @a actionbar ===§b初始化完成！正在进入教程关卡...§f===
execute @e[name=timeline,scores={time=400}] ~~~ execute @a ~~~ playsound random.levelup @s ~~~ 1 2

execute @e[name=timeline,scores={time=420}] ~~~ function halls/open/next_step