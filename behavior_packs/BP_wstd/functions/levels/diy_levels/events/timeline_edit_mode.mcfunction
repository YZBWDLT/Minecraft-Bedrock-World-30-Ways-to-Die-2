# ===== 编辑模式时间线 =====

# --- 将出界的玩家传送回来 ---

## 当玩家不在规定区域内时，提醒并将玩家传送回来
execute as @a at @s unless entity @s[x=-132,y=0,z=-41,dx=31,dy=31,dz=31] run tellraw @s {"rawtext":[{"translate":"chat.out_of_boundary"}]}
execute as @a at @s unless entity @s[x=-132,y=0,z=-41,dx=31,dy=31,dz=31] run function lib/modify_states/sound/mob_cat_meow
execute as @a at @s unless entity @s[x=-132,y=0,z=-41,dx=31,dy=31,dz=31] run tp @s -107 2 -15

# --- 保存关卡时执行的时间线 ---
# 时间线激活状态：active.timeline = 2

execute if score timeline active matches 2 run function levels/diy_levels/events/timeline_saving
