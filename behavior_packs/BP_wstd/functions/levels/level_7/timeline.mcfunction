# 关卡时间线

## 当未通关时，检测玩家维度，当有玩家在下界时立即清除可以在主世界死亡的条件
execute @e[name=levelCompleted,scores={backend=0}] ~~~ execute @e[name=timeline,scores={time=20}] ~~~ execute @a[scores={dimension=1}] ~~~ kill @e[name=diedInOverworld]
execute @e[name=levelCompleted,scores={backend=0}] ~~~ execute @e[name=timeline,scores={time=20}] ~~~ scoreboard players set @s time 0