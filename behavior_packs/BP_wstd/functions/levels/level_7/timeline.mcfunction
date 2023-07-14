# 关卡时间线

## 检测玩家维度，当有玩家在下界时立即清除可以在主世界死亡的条件
execute @e[name=ticker,scores={time=0}] ~~~ execute @a[scores={dimension=1}] ~~~ kill @e[name=diedInOverworld]