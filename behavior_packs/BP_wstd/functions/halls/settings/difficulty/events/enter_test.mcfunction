# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 难度设置 ---

## 非常简单
execute as @a[x=-98,y=19,z=49,r=1] run function halls/settings/difficulty/functions/very_easy
## 简单
execute as @a[x=-100,y=19,z=49,r=1] run function halls/settings/difficulty/functions/easy
## 普通
execute as @a[x=-102,y=19,z=49,r=1] run function halls/settings/difficulty/functions/normal
## 困难
execute as @a[x=-104,y=19,z=49,r=1] run function halls/settings/difficulty/functions/hard

# --- 提示、攻略、跳过单项设置 ---

## 提示
execute as @a[x=-100,y=19,z=43.5,r=1] run function halls/settings/difficulty/functions/hint
## 攻略
execute as @a[x=-102,y=19,z=43.5,r=1] run function halls/settings/difficulty/functions/strategy
## 跳过
execute as @a[x=-104,y=19,z=43.5,r=1] run function halls/settings/difficulty/functions/skip
