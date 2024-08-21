# ===== 第三阶段时间线 =====

# --- [800~805] 清除NPC作者 ---

## 先移动到别的地方再杀，防止出现声音和倒下的动画
execute if score timeline time matches 800 run tp @e[x=-46,y=9,z=27,r=2,type=wstd:creator] 5 5 5
execute if score timeline time matches 805 run kill @e[x=5,y=5,z=5,r=2,type=wstd:creator]

# --- [806] 退出此状态，回到大厅 ---
execute if score timeline time matches 806 run function halls/end/stage_2/quit
