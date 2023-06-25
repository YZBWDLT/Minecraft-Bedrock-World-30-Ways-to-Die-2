# 加载完毕后

## 游戏模式 | 给予辅助物品，激活快捷栏标题，播放限时模式音乐
execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=hintEnabled,scores={settings=1}] ~~~ give @a wstd:hint 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=strategyEnabled,scores={settings=1}] ~~~ give @a wstd:strategy 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=skipEnabled,scores={settings=1}] ~~~ give @a wstd:skip 1 0 {"item_lock": {"mode":"lock_in_inventory"}}
execute @e[name=diyEditMode,scores={backend=0}] ~~~ setblock -103 2 -18 minecraft:redstone_block
execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=remainingTime,scores={time=0..}] ~~~ function system/music/play_timelimit
execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=remainingTime,scores={time=0..}] ~~~ scoreboard players set @e[name=timeline] active 1
execute @e[name=diyEditMode,scores={backend=0}] ~~~ kill @e[type=item]

## 编辑模式 | 传送玩家到命令系统区域，并且切换为创造模式，给予玩家物品
execute @e[name=diyEditMode,scores={backend=1}] ~~~ gamemode creative @a
execute @e[name=diyEditMode,scores={backend=1}] ~~~ tp @a[x=3,y=8,z=2,dx=2,dy=2,dz=2] -107 2 -15
execute @e[name=diyEditMode,scores={backend=1}] ~~~ function levels/diy_levels/text_display
execute @e[name=diyEditMode,scores={backend=1}] ~~~ replaceitem entity @a slot.inventory 0 minecraft:barrier
execute @e[name=diyEditMode,scores={backend=1}] ~~~ replaceitem entity @a slot.inventory 1 minecraft:command_block
execute @e[name=diyEditMode,scores={backend=1}] ~~~ replaceitem entity @a slot.inventory 2 minecraft:allow
execute @e[name=diyEditMode,scores={backend=1}] ~~~ function system/functionality_items_controller
execute @e[name=diyEditMode,scores={backend=1}] ~~~ kill @e[type=item]