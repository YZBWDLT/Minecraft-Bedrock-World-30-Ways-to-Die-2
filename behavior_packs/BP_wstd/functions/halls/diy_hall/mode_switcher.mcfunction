# 分值变换
scoreboard players add @e[name=diyEditMode] backend 1
scoreboard players set @e[name=diyEditMode,scores={backend=!0..1}] backend 0

# 音效、提示、展示文本
scoreboard players set @e[name=soundPlayer] active 11
execute @e[name=diyEditMode,scores={backend=0}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.diy_hall.gaming_mode"}]}
execute @e[name=diyEditMode,scores={backend=1}] ~~~ tellraw @a {"rawtext":[{"translate":"chat.diy_hall.edit_mode"}]}
function halls/diy_hall/text_display