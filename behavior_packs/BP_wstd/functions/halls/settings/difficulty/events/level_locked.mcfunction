# ===== 关卡已锁定 =====
# 当玩家试图开启的关卡未解锁时执行

# --- 提醒玩家 ---

## 音效
function lib/modify_states/sound/mob_villager_no
## 聊天栏
tellraw @s {"rawtext":[{"translate":"chat.level_locked"}]}

# --- 传送玩家 ---
# 因为要将玩家“后移一格”，因此需要判断玩家进入左侧还是右侧的关卡

# (指定玩家进入的方向和强制离开后的传送位置，举例：execute if entity @s[x=-39,y=~,z=30,dx=60,dy=0,dz=1] run tp @s ~~ 29
# (指定玩家进入的方向和强制离开后的传送位置，举例：execute if entity @s[x=-39,y=~,z=23,dx=60,dy=0,dz=1] run tp @s ~~ 25
