structure load time_limited_5_1 -19 21 -104
scoreboard players set @e[name=counter] backend 1
scoreboard players set @e[name=soundPlayer] active 3
clear @a
function system/functionality_items_controller
tp @a -11 22 -100 facing -19 22 -100
kill @e[type=item]