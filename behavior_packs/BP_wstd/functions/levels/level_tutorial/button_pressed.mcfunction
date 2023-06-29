setblock 45 22 -28 air
kill @a
scoreboard players set @e[name=timeline] time 400
scoreboard players set @e[name=timeline] active 1
execute @a ~~~ tellraw @s {"rawtext":[{"translate":"deathmessage.tutorial_level","with":{"rawtext":[{"selector":"@s"}]}}]}