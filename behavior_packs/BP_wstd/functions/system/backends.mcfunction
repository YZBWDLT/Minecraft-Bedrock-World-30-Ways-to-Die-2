# 后台程序

## ===== 循环器 | 每3秒循环一次本后台程序 =====
execute @e[name=ticker,scores={time=0}] ~~~ scoreboard players add @e[name=backendSecond] time 1
scoreboard players remove @e[name=backendSecond,scores={time=3..}] time 3

# 所有杂项功能

## ===== 在大厅时清除物品掉落物 | 开发者模式时不清除 =====
execute @e[name=backendSecond,scores={time=0}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=0}] ~~~ kill @e[type=item]

## ===== 在大厅时回血 =====
execute @e[name=backendSecond,scores={time=0}] ~~~ execute @e[name=level,scores={backend=-3..0}] ~~~ effect @a instant_health 1 5 true

## ===== 为玩家的工具附魔效率V | 第28关和彩蛋第8关除外，第28关不能让木锹附魔，彩蛋第8关不需要附魔 | 开发者模式时不附魔 =====
execute @e[name=backendSecond,scores={time=0}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ execute @e[name=level,scores={backend=!28,backend=!48}] ~~~ enchant @a efficiency 5

## ===== 永久饱和效果 | 第24关除外，这关需要吃河豚 =====
execute @e[name=backendSecond,scores={time=0}] ~~~ execute @e[name=level,scores={backend=!24}] ~~~ effect @a saturation 1 5 true

## ===== 清除经验 | 开发者模式时不清除 =====
execute @e[name=backendSecond,scores={time=0}] ~~~ execute @e[name=developerMode,scores={settings=0}] ~~~ xp -10L @a

## ===== 将重生点设置到统一主世界重生点上 | 教程关卡利用自己的重生点，不统一设置 | 始终执行 =====
execute @e[name=level,scores={backend=!-18}] ~~~ execute @e[name=spawnpoint] ~~~ spawnpoint @a ~~~

## ===== 当检测到为大厅时，自动设置active.timeline=2以保证关卡功能正常 =====
execute @e[name=level,scores={backend=-3..0}] ~~~ execute @e[name=timeline,scores={active=!2}] ~~~ scoreboard players set @s active 2

## ===== 末地按钮，且挖空黑曜石柱，以防末影龙复活时黑曜石柱重置 =====
execute @a[scores={dimension=2},c=1] ~~~ execute @s ~~~ detect 37 58 -2 stone_button 11 tp @a[x=36,y=56,z=-2,dx=2,dy=2,dz=2] 35 62 2
execute @e[name=ticker,scores={time=0}] ~~~ execute @a[scores={dimension=2},c=1] ~~~ fill 39 57 0 39 62 0 air

## ===== 锁定难度 =====
execute @e[name=backendSecond,scores={time=0}] ~~~ execute @e[name=level,scores={backend=!24}] ~~~ difficulty hard