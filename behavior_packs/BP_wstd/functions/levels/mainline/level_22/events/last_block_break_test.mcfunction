# ===== 检测最后的方块被挖开 ====

# --- 若按钮前的两个方块中的一个被挖开，进行标记 ---
execute if block 19 22 111 air run scoreboard players set level22.endBlockBroken data 1
execute if block 19 21 111 air run scoreboard players set level22.endBlockBroken data 1
