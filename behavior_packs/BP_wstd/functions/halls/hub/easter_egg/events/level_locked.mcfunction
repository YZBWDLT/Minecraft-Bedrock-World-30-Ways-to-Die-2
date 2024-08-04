# ===== 关卡已锁定 =====
# 当玩家试图开启的关卡未解锁时执行

# --- 提醒玩家 ---

## 音效
function lib/modify_states/sound/mob_villager_no
## 聊天栏
tellraw @s {"rawtext":[{"translate":"chat.level_locked"}]}

# --- 传送玩家 ---
# 因为要将玩家“后移一格”，因此需要判断玩家进入左侧还是右侧的关卡

execute if entity @s[x=-39,y=~,z=8,dx=17,dy=0,dz=1] run tp @s ~~ 6
execute if entity @s[x=-39,y=~,z=1,dx=17,dy=0,dz=1] run tp @s ~~ 4
