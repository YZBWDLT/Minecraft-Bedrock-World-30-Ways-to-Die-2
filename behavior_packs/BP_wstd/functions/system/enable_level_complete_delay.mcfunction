# 启用通关延迟

## ===== 按照设置启用延迟档数 =====
scoreboard players operation @e[name=levelCompleteDelay] active = @e[name=levelCompleteDelay] settings

## ===== 按照延迟档数启用延迟秒数 =====
scoreboard players set @e[name=levelCompleteDelay,scores={active=0}] time 0
scoreboard players set @e[name=levelCompleteDelay,scores={active=1}] time 5
scoreboard players set @e[name=levelCompleteDelay,scores={active=2}] time 10
scoreboard players set @e[name=levelCompleteDelay,scores={active=3}] time 15
scoreboard players set @e[name=levelCompleteDelay,scores={active=4}] time 20
scoreboard players set @e[name=levelCompleteDelay,scores={active=5}] time 25
scoreboard players set @e[name=levelCompleteDelay,scores={active=-1}] time 5
scoreboard players set @e[name=levelCompleteDelay,scores={active=-2}] time 10
scoreboard players set @e[name=levelCompleteDelay,scores={active=-3}] time 15
scoreboard players set @e[name=levelCompleteDelay,scores={active=-4}] time 20
scoreboard players set @e[name=levelCompleteDelay,scores={active=-5}] time 25
