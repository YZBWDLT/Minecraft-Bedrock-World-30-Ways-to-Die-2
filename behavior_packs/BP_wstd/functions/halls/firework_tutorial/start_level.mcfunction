# 烟花教程

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -14

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a 13 22 -22 facing 6 22 -29

# ===== 重置步骤 =====
scoreboard players set @e[name=counter] backend 1

# ===== 标题 =====
titleraw @a times 0 60 0
titleraw @a title {"rawtext":[{"translate":"title.firework_tutorial"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.firework_tutorial"}]}

# ===== 显示大厅显示文本 =====
function halls/firework_tutorial/text_display

# ===== 给予物品 =====
give @a[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
give @a[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 {"item_lock": { "mode": "lock_in_inventory" }}