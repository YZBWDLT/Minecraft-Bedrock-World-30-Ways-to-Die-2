scoreboard players reset "§l§e限时 §r§70§7/5" display
scoreboard players reset "§l§e限时 §r§b1§7/5" display
scoreboard players reset "§l§e限时 §r§b2§7/5" display
scoreboard players reset "§l§e限时 §r§a3§7/5" display
scoreboard players reset "§l§e限时 §r§e4§7/5" display
scoreboard players reset "§l§e限时 §r§65§7/5" display

execute @e[name=timeLimitedAdvancement,scores={stats=!36..40}] ~~~ scoreboard players set "§l§e限时 §r§70§7/5" display 8
execute @e[name=timeLimitedAdvancement,scores={stats=36}] ~~~ scoreboard players set "§l§e限时 §r§b1§7/5" display 8
execute @e[name=timeLimitedAdvancement,scores={stats=37}] ~~~ scoreboard players set "§l§e限时 §r§b2§7/5" display 8
execute @e[name=timeLimitedAdvancement,scores={stats=38}] ~~~ scoreboard players set "§l§e限时 §r§a3§7/5" display 8
execute @e[name=timeLimitedAdvancement,scores={stats=39}] ~~~ scoreboard players set "§l§e限时 §r§e4§7/5" display 8

execute @e[name=timeLimitedAdvancement,scores={stats=40}] ~~~ scoreboard players set "§l§e限时 §r§65§7/5" display 8