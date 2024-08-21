# ===== 时间线 =====

# --- 检测玩家维度 ---

## 挖空黑曜石柱
execute in the_end if entity @a[scores={dimension=2}] if score tick time matches 3 run fill 39 57 0 39 62 0 air
## 当玩家按下按钮后，将玩家传送上来
execute in the_end as @a[scores={dimension=2},x=36,y=56,z=-2,dx=2,dy=2,dz=2] at @s if block 37 58 -2 stone_button ["facing_direction"=3,"button_pressed_bit"=true] run tp @s 35 62 2
