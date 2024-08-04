# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 粒子 ---
# 每秒执行一次
execute if score tick time matches 7 run function levels/easter_egg/level_4/events/particle

# --- 检测玩家选择了好评还是差评 ---

## 好评
execute if score timeline active matches 6 as @a[x=-23,y=21,z=-43,r=1] run function levels/easter_egg/level_4/events/like
execute if score timeline active matches 6 as @a[x=-23,y=21,z=-47,r=1] run function levels/easter_egg/level_4/events/like
## 差评
execute if score timeline active matches 6 as @a[x=-16,y=21,z=-49,r=1] run function levels/easter_egg/level_4/events/dislike

# --- 对话过程中 ---

## 当对话进行到第280刻之后，劈下闪电
execute if score timeline active matches 1 if score timeline time matches 280.. if score tick time matches 8 as @a at @s run summon lightning_bolt
