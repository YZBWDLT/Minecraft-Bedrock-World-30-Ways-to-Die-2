# ===== 输出为记分板 =====
# 用于将当前的彩蛋数据输出到记分板上

# 调用此方法时：
# · 执行者任意
# · 执行位置任意
# 输出结果：
# · 输出完成的彩蛋数目，中文为display记分板，英文为display1记分板

# --- 中文 ---
scoreboard players reset "§l§c彩§d蛋 §r§70§7/10" display
scoreboard players reset "§l§c彩§d蛋 §r§b1§7/10" display
scoreboard players reset "§l§c彩§d蛋 §r§b2§7/10" display
scoreboard players reset "§l§c彩§d蛋 §r§b3§7/10" display
scoreboard players reset "§l§c彩§d蛋 §r§a4§7/10" display
scoreboard players reset "§l§c彩§d蛋 §r§a5§7/10" display
scoreboard players reset "§l§c彩§d蛋 §r§a6§7/10" display
scoreboard players reset "§l§c彩§d蛋 §r§e7§7/10" display
scoreboard players reset "§l§c彩§d蛋 §r§e8§7/10" display
scoreboard players reset "§l§c彩§d蛋 §r§e9§7/10" display
scoreboard players reset "§l§c彩§d蛋 §r§610§7/10" display

execute if score progress.easterEgg record matches -1..0 run scoreboard players set "§l§c彩§d蛋 §r§70§7/10" display 9
execute if score progress.easterEgg record matches 1 run scoreboard players set "§l§c彩§d蛋 §r§b1§7/10" display 9
execute if score progress.easterEgg record matches 2 run scoreboard players set "§l§c彩§d蛋 §r§b2§7/10" display 9
execute if score progress.easterEgg record matches 3 run scoreboard players set "§l§c彩§d蛋 §r§b3§7/10" display 9
execute if score progress.easterEgg record matches 4 run scoreboard players set "§l§c彩§d蛋 §r§a4§7/10" display 9
execute if score progress.easterEgg record matches 5 run scoreboard players set "§l§c彩§d蛋 §r§a5§7/10" display 9
execute if score progress.easterEgg record matches 6 run scoreboard players set "§l§c彩§d蛋 §r§a6§7/10" display 9
execute if score progress.easterEgg record matches 7 run scoreboard players set "§l§c彩§d蛋 §r§e7§7/10" display 9
execute if score progress.easterEgg record matches 8 run scoreboard players set "§l§c彩§d蛋 §r§e8§7/10" display 9
execute if score progress.easterEgg record matches 9 run scoreboard players set "§l§c彩§d蛋 §r§e9§7/10" display 9
execute if score progress.easterEgg record matches 10 run scoreboard players set "§l§c彩§d蛋 §r§610§7/10" display 9

# --- English ---
scoreboard players reset "§l§cE§dE §r§70§7/10" display1
scoreboard players reset "§l§cE§dE §r§b1§7/10" display1
scoreboard players reset "§l§cE§dE §r§b2§7/10" display1
scoreboard players reset "§l§cE§dE §r§b3§7/10" display1
scoreboard players reset "§l§cE§dE §r§a4§7/10" display1
scoreboard players reset "§l§cE§dE §r§a5§7/10" display1
scoreboard players reset "§l§cE§dE §r§a6§7/10" display1
scoreboard players reset "§l§cE§dE §r§e7§7/10" display1
scoreboard players reset "§l§cE§dE §r§e8§7/10" display1
scoreboard players reset "§l§cE§dE §r§e9§7/10" display1
scoreboard players reset "§l§cE§dE §r§610§7/10" display1

execute if score progress.easterEgg record matches -1..0 run scoreboard players set "§l§cE§dE §r§70§7/10" display1 9
execute if score progress.easterEgg record matches 1 run scoreboard players set "§l§cE§dE §r§b1§7/10" display1 9
execute if score progress.easterEgg record matches 2 run scoreboard players set "§l§cE§dE §r§b2§7/10" display1 9
execute if score progress.easterEgg record matches 3 run scoreboard players set "§l§cE§dE §r§b3§7/10" display1 9
execute if score progress.easterEgg record matches 4 run scoreboard players set "§l§cE§dE §r§a4§7/10" display1 9
execute if score progress.easterEgg record matches 5 run scoreboard players set "§l§cE§dE §r§a5§7/10" display1 9
execute if score progress.easterEgg record matches 6 run scoreboard players set "§l§cE§dE §r§a6§7/10" display1 9
execute if score progress.easterEgg record matches 7 run scoreboard players set "§l§cE§dE §r§e7§7/10" display1 9
execute if score progress.easterEgg record matches 8 run scoreboard players set "§l§cE§dE §r§e8§7/10" display1 9
execute if score progress.easterEgg record matches 9 run scoreboard players set "§l§cE§dE §r§e9§7/10" display1 9
execute if score progress.easterEgg record matches 10 run scoreboard players set "§l§cE§dE §r§610§7/10" display1 9
