# 维度检测器

## 主世界 dimension=0
execute @s ~~~ detect 0 0 0 grass -1 scoreboard players set @s dimension 0

## 下界 dimension=1
execute @s ~~~ detect 0 0 0 netherrack -1 scoreboard players set @s dimension 1

## 末地 dimension=2
execute @s ~~~ detect 0 0 0 end_stone -1 scoreboard players set @s dimension 2