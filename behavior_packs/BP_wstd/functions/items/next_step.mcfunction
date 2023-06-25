# 下一步控制器

## -17 | 阅读规则 | 使用下一步时，进入选择难度阶段
execute @e[name=level,scores={backend=-17}] ~~~ function halls/choose_difficulty/start_level

## -15 | 下界异常 | 使用下一步时，传送回主世界
execute @e[name=level,scores={backend=-15}] ~~~ tp @a[scores={dimension=1}] @e[family=overworld]

## -14 | 烟花教程 | 使用下一步时，增加步骤
execute @e[name=level,scores={backend=-14}] ~~~ scoreboard players add @e[name=counter] backend 1
execute @e[name=level,scores={backend=-14}] ~~~ function halls/firework_tutorial/text_display

## -5 | 烟花秀设置 | 使用下一步时，保存结构并返回到大厅
execute @e[name=level,scores={backend=-5}] ~~~ structure save firework_dispenser 10 22 -25 10 22 -25 disk
execute @e[name=level,scores={backend=-5}] ~~~ tellraw @a {"rawtext":[{"translate":"settings.firework_settings.saved"}]}
execute @e[name=level,scores={backend=-5}] ~~~ function halls/setting_center/start_level

## -1 | DIY关卡大厅 | 使用下一步时，在游戏模式与编辑模式之间切换
execute @e[name=level,scores={backend=-1}] ~~~ function halls/diy_hall/mode_switcher

## 36 | 限时第1关 | 读取结构
execute @e[name=level,scores={backend=36}] ~~~ structure load time_limited_1_1 -54 21 -71

## 38 | 限时第3关 | 召唤鸡
execute @e[name=level,scores={backend=38}] ~~~ summon minecraft:chicken 8 21 -85

## 39 | 限时第4关 | 下一步以开始游戏，或生成生物
execute @e[name=level,scores={backend=39}] ~~~ scoreboard players set @e[name=timeline] active 1
execute @e[name=level,scores={backend=39}] ~~~ function levels/time_limited_4/summon_entity

## 40 | 限时第5关 | 下一步以开始游戏
execute @e[name=level,scores={backend=40}] ~~~ scoreboard players set @e[name=timeline] active 1

## 51~60 | DIY关卡 - 编辑模式 | 使用下一步时，增加步骤
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ scoreboard players add @e[name=counter] backend 1
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ function levels/diy_levels/text_display
