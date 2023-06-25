scoreboard players set @e[name=timeline] time 0
scoreboard players set @e[name=timeline] active 4

## 清除烟花发射器
execute @e[name=fireworkLauncher] ~~~ fill ~~~~~2~ minecraft:air
kill @e[name=fireworkLauncher]