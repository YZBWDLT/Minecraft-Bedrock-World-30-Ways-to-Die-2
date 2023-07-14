# 防作弊系统

# ===== 防止调模式 =====
# 对权限等级为0的玩家，在非冒险模式的情况下改为冒险模式，在DIY关卡的编辑模式不予限制
execute @e[name=level,scores={backend=!51..60}] ~~~ tellraw @a[scores={oplevel=0},m=!adventure] {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"feedback.error.cheating.line1"},{"translate":"feedback.error.cheating.line2"}]}}]}
execute @e[name=level,scores={backend=!51..60}] ~~~ gamemode adventure @a[scores={oplevel=0},m=!adventure]

execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=!1}] ~~~ tellraw @a[scores={oplevel=0},m=!adventure] {"rawtext":[{"translate":"%%s\n%%s","with":{"rawtext":[{"translate":"feedback.error.cheating.line1"},{"translate":"feedback.error.cheating.line2"}]}}]}
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=!1}] ~~~ gamemode adventure @a[scores={oplevel=0},m=!adventure]

# ===== 防止利用特性卡bug =====
# 在非28关时清除船
execute @e[name=level,scores={backend=!28}] ~~~ execute @e[type=boat] ~~~ tellraw @a {"rawtext":[{"translate":"chat.anti_cheating.boat_not_allowed"}]}
execute @e[name=level,scores={backend=!28}] ~~~ execute @e[type=boat] ~~~ kill @s

# 在非18关时清除末影珍珠
execute @e[name=level,scores={backend=!31,backend=!18}] ~~~ execute @e[type=ender_pearl] ~~~ tellraw @a {"rawtext":[{"translate":"chat.anti_cheating.ender_pearl_not_allowed"}]}
execute @e[name=level,scores={backend=!31,backend=!18}] ~~~ execute @e[type=ender_pearl] ~~~ kill @s

# 在自定义关卡清除传送门
execute @e[name=level,scores={backend=51..60}] ~~~ execute @a[x=-132,y=0,z=-41,dx=31,dy=31,dz=31] ~~~ fill ~-5~-5~-5~5~5~5 air [] replace portal
execute @e[name=level,scores={backend=51..60}] ~~~ execute @a[x=-132,y=0,z=-41,dx=31,dy=31,dz=31] ~~~ fill ~-5~-5~-5~5~5~5 air [] replace end_portal