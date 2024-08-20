# ===== 如何游玩（时间线） =====

# --- [1~160] 大厅动画 ---

## 视角与位置控制 | 160刻合计位置~-16~~
execute if score timeline time matches 1..160 as @e[name=playerPosition] at @s run tp @s ~-0.1~~
execute if score timeline time matches 1..160 as @e[name=playerPosition] at @s positioned ~-4~~ run tp @e[name=facingPosition] ~~~

# --- [161~320] 怎么玩？（第1关场景） ---

## 初始化
execute if score timeline time matches 161 run tp @e[name=playerPosition] 45 24 52
execute if score timeline time matches 161 run tp @e[name=facingPosition] 44 21 44

## 视角与位置控制 | 160刻合计位置~4~~-4，视角~-4~~4
execute if score timeline time matches 161..320 as @e[name=playerPosition] at @s run tp @s ~0.025~~-0.025
execute if score timeline time matches 161..320 as @e[name=facingPosition] at @s run tp @s ~-0.025~~0.025

# --- [321~480] 关卡（主大厅场景） ---

## 初始化
execute if score timeline time matches 321 run tp @e[name=playerPosition] 21 18 24
execute if score timeline time matches 321 run tp @e[name=facingPosition] 13 9 30

## 视角与位置控制 | 160刻合计视角~-24~~
execute if score timeline time matches 321..480 as @e[name=facingPosition] at @s run tp @s ~-0.15~~

# --- [481~640] 关卡（彩蛋第6关场景） ---

## 初始化
execute if score timeline time matches 481 run tp @e[name=playerPosition] 14 24 -49
execute if score timeline time matches 481 run tp @e[name=facingPosition] 6 22 -41

## 视角与位置控制 | 160刻合计视角~6.4~~-6.4
execute if score timeline time matches 481..640 as @e[name=facingPosition] at @s run tp @s ~0.04~~-0.04

# --- [641~800] 关卡（彩蛋第6关场景） ---

## 初始化
execute if score timeline time matches 641 run tp @e[name=playerPosition] -52 35 -94
execute if score timeline time matches 641 run tp @e[name=facingPosition] -50 24 -92

## 视角与位置控制 | 160刻合计位置~-8~~-8
execute if score timeline time matches 641..800 as @e[name=playerPosition] at @s run tp @s ~-0.05~~-0.05

# --- [801~960] 关卡（自定义关卡场景） ---

## 初始化
execute if score timeline time matches 801 as @e[name=facingPosition] at @s run tp @e[name=playerPosition] ^^5^30
execute if score timeline time matches 801 run tp @e[name=facingPosition] -116 16 -25 331 0

## 视角与位置控制 | 160刻合计位置-32°
execute if score timeline time matches 801..960 as @e[name=facingPosition] at @s run tp @e[name=playerPosition] ^^5^30
execute if score timeline time matches 801..960 as @e[name=facingPosition] at @s run tp @s ~~~ ~-0.25

# --- [961~1120] 辅助性功能（教程关卡场景） ---

## 初始化
execute if score timeline time matches 961 run tp @e[name=playerPosition] 48 24 -28
execute if score timeline time matches 961 run tp @e[name=facingPosition] 45 21 -21

## 给予重置与退出物品
execute if score timeline time matches 961 as @a run give @s[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
execute if score timeline time matches 961 as @a run give @s[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- [1121~1280] 辅助性功能（第2关场景） ---

## 初始化
execute if score timeline time matches 1121 run tp @e[name=playerPosition] 21 24 45
execute if score timeline time matches 1121 run tp @e[name=facingPosition] 18 21 53

## 给予提示和攻略物品
execute if score timeline time matches 1121 as @a run give @s wstd:hint 1 0 {"item_lock":{"mode":"lock_in_inventory"}}
execute if score timeline time matches 1121 as @a run give @s wstd:strategy 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

# --- [1281~1440] 辅助性功能（第12关场景） ---

## 初始化
execute if score timeline time matches 1281 run tp @e[name=playerPosition] 33 28 57
execute if score timeline time matches 1281 run tp @e[name=facingPosition] 30 24 65

# --- [1441~1600] 辅助性功能（第13关场景） ---

## 初始化
execute if score timeline time matches 1441 run tp @e[name=playerPosition] -20 28 57
execute if score timeline time matches 1441 run tp @e[name=facingPosition] -23 26 65

## 给予跳过物品
execute if score timeline time matches 1441 as @a run give @s wstd:skip 1 0 {"item_lock":{"mode":"lock_in_inventory"}}

# --- [1601~1760] 统计（统计中心场景） ---

## 初始化
execute if score timeline time matches 1601 run tp @e[name=playerPosition] -107 22 33
execute if score timeline time matches 1601 run tp @e[name=facingPosition] -107 19 27

## 视角与位置控制 | 160刻合计位置&视角~9.6~~
execute if score timeline time matches 1601..1760 as @e[name=playerPosition] at @s run tp @s ~0.06~~
execute if score timeline time matches 1601..1760 as @e[name=facingPosition] at @s run tp @s ~0.06~~

## 清除辅助性物品
execute if score timeline time matches 1601 run clear @a wstd:hint
execute if score timeline time matches 1601 run clear @a wstd:strategy
execute if score timeline time matches 1601 run clear @a wstd:skip
execute if score timeline time matches 1601 run clear @a wstd:reset
execute if score timeline time matches 1601 run clear @a wstd:quit

# --- [1761~1920] 进度（进度中心场景） ---

## 初始化
execute if score timeline time matches 1761 run tp @e[name=playerPosition] -97 19 16 70 0
execute if score timeline time matches 1761 as @e[name=playerPosition] at @s run tp @e[name=facingPosition] ^^2^5

## 视角与位置控制 | 160刻合计视角+40°
execute if score timeline time matches 1761..1920 as @e[name=playerPosition] at @s run tp @s ~~~ ~0.25
execute if score timeline time matches 1761..1920 as @e[name=playerPosition] at @s run tp @e[name=facingPosition] ^^2^5

# --- [1921] 时间线结束，返回到设置中心 ---
execute if score timeline time matches 1921 as @a[c=1] at @s run function halls/settings/about/events/used_back
