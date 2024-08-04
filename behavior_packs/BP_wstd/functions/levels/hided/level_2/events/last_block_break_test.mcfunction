# ===== 检测最后的方块被挖开 ====

# --- 若按钮前的两个方块中的一个被挖开，进行标记 ---
execute if block -60 21 107 air run scoreboard players set hided2.endBlockBroken data 1
execute if block -60 22 107 air run scoreboard players set hided2.endBlockBroken data 1
execute if block -60 23 107 air run scoreboard players set hided2.endBlockBroken data 1
execute if block -60 24 107 air run scoreboard players set hided2.endBlockBroken data 1
execute if block -60 25 107 air run scoreboard players set hided2.endBlockBroken data 1
