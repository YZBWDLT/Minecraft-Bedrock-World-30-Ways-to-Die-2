# 调整权限等级

scoreboard players add @s oplevel 1
scoreboard players set @a[scores={oplevel=!0..2}] oplevel 0

tellraw @s {"rawtext":[{"translate":"settings.oplevel","with":{"rawtext":[{"score":{"objective":"oplevel","name":"@s"}}]}}]}