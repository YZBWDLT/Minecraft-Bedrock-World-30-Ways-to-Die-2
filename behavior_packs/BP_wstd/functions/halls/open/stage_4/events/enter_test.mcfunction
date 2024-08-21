# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 难度选择 ---

## 非常简单
execute if entity @a[x=48,y=21,z=-22,r=1] run function halls/open/stage_4/functions/very_easy
## 简单
execute if entity @a[x=46,y=21,z=-22,r=1] run function halls/open/stage_4/functions/easy
## 中等
execute if entity @a[x=44,y=21,z=-22,r=1] run function halls/open/stage_4/functions/normal
## 困难
execute if entity @a[x=42,y=21,z=-22,r=1] run function halls/open/stage_4/functions/hard
## 速通模式
execute if score mapCompletedTimes record matches 1.. if entity @a[x=41,y=21,z=-25,r=0.65] run function halls/open/stage_4/functions/speedrun_mode
