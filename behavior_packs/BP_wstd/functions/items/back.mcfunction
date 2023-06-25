# 返回控制器

# -14 | 从烟花教程返回 | 返回到上一步
execute @e[name=level,scores={backend=-14}] ~~~ scoreboard players add @e[name=counter] backend -1
execute @e[name=level,scores={backend=-14}] ~~~ function halls/firework_tutorial/text_display

# -13 | 从结束特效返回 | 触发返回函数
execute @e[name=level,scores={backend=-13}] ~~~ function halls/end/advancements_completed/back
execute @e[name=level,scores={backend=-13}] ~~~ clear @a wstd:back

# -12~-10 | 从进度中心、统计中心和设置中心返回 | 触发返回大厅函数
execute @e[name=level,scores={backend=-12..-10}] ~~~ function halls/main_hall/start_level
execute @e[name=level,scores={backend=-12..-10}] ~~~ clear @a wstd:back

# -9~-4 | 从子设置项返回 | 触发返回设置中心的函数
execute @e[name=level,scores={backend=-9..-4}] ~~~ function halls/setting_center/start_level

# -3~0 | 从各大厅返回 | 触发返回大厅的函数
execute @e[name=level,scores={backend=-3..0}] ~~~ function halls/main_hall/start_level
execute @e[name=level,scores={backend=-3..0}] ~~~ clear @a wstd:back

## 51~60 | DIY关卡 - 编辑模式 | 使用下一步时，减少步骤
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ scoreboard players add @e[name=counter] backend -1
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=1}] ~~~ function levels/diy_levels/text_display

## 其余情况 | 报错
execute @e[name=level,scores={backend=!-14..0,backend=!51..60}] ~~~ tellraw @a {"rawtext":[{"translate":"feedback.error.invalid_level_id.not_expected","with":{"rawtext":[{"score":{"objective":"backend","name":"@e[name=level]"}}]}}]}