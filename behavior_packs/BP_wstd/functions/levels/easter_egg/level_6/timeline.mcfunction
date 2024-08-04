# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 检测玩家是否接触到岩浆 ---
scoreboard players set easterEgg6.playerInLava data 0
execute as @a at @s if block ~~~ lava run scoreboard players set easterEgg6.playerInLava data 1

# --- 玩家未接触到岩浆时 ---
# 每秒执行1次
execute if score tick time matches 10 if score easterEgg6.playerInLava data matches 0 run replaceitem entity @a slot.weapon.offhand 0 totem_of_undying 1 0 {"item_lock": { "mode": "lock_in_slot" } }

# --- 玩家接触到岩浆时 ---
# 每秒执行1次
execute if score tick time matches 11 if score easterEgg6.playerInLava data matches 1 run effect @a clear
