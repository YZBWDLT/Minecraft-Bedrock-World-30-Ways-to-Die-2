# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 物品检测 ---
execute if score level10.itemTestBlackBed active matches 1 as @a[hasitem={item=bed,data=15}] run function levels/mainline/level_10/item_tests/black_bed
execute if score level10.itemTestBrownBed active matches 1 as @a[hasitem={item=bed,data=12}] run function levels/mainline/level_10/item_tests/brown_bed
execute if score level10.itemTestGrayBed active matches 1 as @a[hasitem={item=bed,data=7}] run function levels/mainline/level_10/item_tests/gray_bed
execute if score level10.itemTestLightGrayBed active matches 1 as @a[hasitem={item=bed,data=8}] run function levels/mainline/level_10/item_tests/light_gray_bed
execute if score level10.itemTestPinkBed active matches 1 as @a[hasitem={item=bed,data=6}] run function levels/mainline/level_10/item_tests/pink_bed
execute if score level10.itemTestWhiteBed active matches 1 as @a[hasitem={item=bed,data=0}] run function levels/mainline/level_10/item_tests/white_bed

# --- 给予玩家药效 ---
# 每秒给予1次

## 防火
execute if score tick time matches 2 run effect @a fire_resistance 30 0 true
