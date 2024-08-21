# ===== 召唤作者实体 =====

# --- 召唤“一只卑微的量筒”并手持命令方块 ---
summon wstd:creator -51 10 27 270 0 become_lt_pose
replaceitem entity @e[x=-51,y=10,z=27,r=2,type=wstd:creator] slot.weapon.mainhand 0 command_block

# --- 召唤“狂野巴豆”并手持钻石镐 ---
summon wstd:creator -46 10 32 180 0 become_bd_pose
replaceitem entity @e[x=-46,y=10,z=32,r=2,type=wstd:creator] slot.weapon.mainhand 0 diamond_pickaxe

# --- 召唤“祉语”并手持结构方块 ---
summon wstd:creator -46 10 22 0 0 become_zy_pose
replaceitem entity @e[x=-46,y=10,z=22,r=2,type=wstd:creator] slot.weapon.mainhand 0 structure_block
