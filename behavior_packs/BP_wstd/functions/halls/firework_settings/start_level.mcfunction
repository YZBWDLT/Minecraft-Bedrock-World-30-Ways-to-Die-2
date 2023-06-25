# 烟花教程

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -5

# ===== 启动大厅级关卡启动函数 =====
function halls/start_hall_level

# ===== 传送玩家到大厅 =====
tp @a 13 22 -22 facing 6 22 -29

# ===== 显示大厅显示文本 =====
function halls/firework_settings/text_display

# ===== 给予物品 =====
give @a[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 {"item_lock": { "mode": "lock_in_inventory" }}
give @a[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 {"item_lock": { "mode": "lock_in_inventory" }}

# ===== 加载烟花结构 =====
structure load firework_dispenser 10 22 -25