# ===== 摧毁下界传送门 =====
# 当玩家试图进入下界传送门时，摧毁之

# --- 提醒玩家 ---
tellraw @s {"rawtext":[{"translate":"chat.level.level_30.portal"}]}

# --- 摧毁传送门 ---
fill ~-2~-2~-2~2~2~2 air [] replace portal

# --- 分解玩家的打火石 ---
# >:( 别惦记你那*传送门啦！
give @a[hasitem={item=flint_and_steel,quantity=32..}] iron_ingot 32 0
give @a[hasitem={item=flint_and_steel,quantity=32..}] flint 32 0
clear @a[hasitem={item=flint_and_steel,quantity=32..}] flint_and_steel -1 32

give @a[hasitem={item=flint_and_steel,quantity=16..}] iron_ingot 16 0
give @a[hasitem={item=flint_and_steel,quantity=16..}] flint 16 0
clear @a[hasitem={item=flint_and_steel,quantity=16..}] flint_and_steel -1 16

give @a[hasitem={item=flint_and_steel,quantity=8..}] iron_ingot 8 0
give @a[hasitem={item=flint_and_steel,quantity=8..}] flint 8 0
clear @a[hasitem={item=flint_and_steel,quantity=8..}] flint_and_steel -1 8

give @a[hasitem={item=flint_and_steel,quantity=4..}] iron_ingot 4 0
give @a[hasitem={item=flint_and_steel,quantity=4..}] flint 4 0
clear @a[hasitem={item=flint_and_steel,quantity=4..}] flint_and_steel -1 4

give @a[hasitem={item=flint_and_steel,quantity=2..}] iron_ingot 2 0
give @a[hasitem={item=flint_and_steel,quantity=2..}] flint 2 0
clear @a[hasitem={item=flint_and_steel,quantity=2..}] flint_and_steel -1 2

give @a[hasitem={item=flint_and_steel,quantity=1..}] iron_ingot 1 0
give @a[hasitem={item=flint_and_steel,quantity=1..}] flint 1 0
clear @a[hasitem={item=flint_and_steel,quantity=1..}] flint_and_steel -1 1
