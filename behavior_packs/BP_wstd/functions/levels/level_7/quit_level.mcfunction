## 如果玩家在下界，将玩家传送到主世界
execute @a[scores={dimension=1}] ~~~ tp @a @e[family=overworld,c=1]
## 如果玩家在主世界，直接触发函数
execute @a[scores={dimension=0}] ~~~ function levels/all_levels/quit_level

## 清除标记
kill @e[name=diedInOverworld]