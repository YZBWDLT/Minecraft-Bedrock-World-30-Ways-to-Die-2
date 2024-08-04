# ===== 输出为记分板 =====
# 用于将当前的跳过数据输出到记分板上

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出使用的跳过数目，中文为display记分板，英文为display1记分板

# --- 中文 ---
## 清除展示记分板
scoreboard players reset "§l§4跳过 §r§60§7/7" display
scoreboard players reset "§l§4跳过 §r§e1§7/7" display
scoreboard players reset "§l§4跳过 §r§e2§7/7" display
scoreboard players reset "§l§4跳过 §r§b3§7/7" display
scoreboard players reset "§l§4跳过 §r§b4§7/7" display
scoreboard players reset "§l§4跳过 §r§d5§7/7" display
scoreboard players reset "§l§4跳过 §r§c6§7/7" display
scoreboard players reset "§l§4跳过 §r§47§7/7" display

## 重添加
execute if score skipUsed record matches 0 run scoreboard players set "§l§4跳过 §r§60§7/7" display 13
execute if score skipUsed record matches 1 run scoreboard players set "§l§4跳过 §r§e1§7/7" display 13
execute if score skipUsed record matches 2 run scoreboard players set "§l§4跳过 §r§e2§7/7" display 13
execute if score skipUsed record matches 3 run scoreboard players set "§l§4跳过 §r§b3§7/7" display 13
execute if score skipUsed record matches 4 run scoreboard players set "§l§4跳过 §r§b4§7/7" display 13
execute if score skipUsed record matches 5 run scoreboard players set "§l§4跳过 §r§d5§7/7" display 13
execute if score skipUsed record matches 6 run scoreboard players set "§l§4跳过 §r§c6§7/7" display 13
execute if score skipUsed record matches 7 run scoreboard players set "§l§4跳过 §r§47§7/7" display 13

# --- English ---
## 清除展示记分板
scoreboard players reset "§l§4Skip §r§60§7/7" display1
scoreboard players reset "§l§4Skip §r§e1§7/7" display1
scoreboard players reset "§l§4Skip §r§e2§7/7" display1
scoreboard players reset "§l§4Skip §r§b3§7/7" display1
scoreboard players reset "§l§4Skip §r§b4§7/7" display1
scoreboard players reset "§l§4Skip §r§d5§7/7" display1
scoreboard players reset "§l§4Skip §r§c6§7/7" display1
scoreboard players reset "§l§4Skip §r§47§7/7" display1

## 重添加
execute if score skipUsed record matches 0 run scoreboard players set "§l§4Skip §r§60§7/7" display1 13
execute if score skipUsed record matches 1 run scoreboard players set "§l§4Skip §r§e1§7/7" display1 13
execute if score skipUsed record matches 2 run scoreboard players set "§l§4Skip §r§e2§7/7" display1 13
execute if score skipUsed record matches 3 run scoreboard players set "§l§4Skip §r§b3§7/7" display1 13
execute if score skipUsed record matches 4 run scoreboard players set "§l§4Skip §r§b4§7/7" display1 13
execute if score skipUsed record matches 5 run scoreboard players set "§l§4Skip §r§d5§7/7" display1 13
execute if score skipUsed record matches 6 run scoreboard players set "§l§4Skip §r§c6§7/7" display1 13
execute if score skipUsed record matches 7 run scoreboard players set "§l§4Skip §r§47§7/7" display1 13