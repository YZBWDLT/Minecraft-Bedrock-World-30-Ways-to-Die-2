# ===== 大厅物品供应器 =====

# --- 清除物品 ---
function lib/modify_data/item/clear

# --- 彩蛋关卡 ---
# 发现彩蛋后给予
execute if score progress.easterEgg record matches 0.. run give @a[hasitem={item=wstd:easter_egg_hall,quantity=0}] wstd:easter_egg_hall 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 限时关卡 ---
# 当限时关卡解锁后给予
execute if score progress.timeLimited record matches 0.. run give @a[hasitem={item=wstd:time_limited_hall,quantity=0}] wstd:time_limited_hall 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 自定义关卡 ---
# 当完成主线后给予
execute if score progress.mapStage record matches 1.. run give @a[hasitem={item=wstd:diy_hall,quantity=0}] wstd:diy_hall 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 统计中心 ---
# 当完成主线后给予
execute if score progress.mapStage record matches 1.. run give @a[hasitem={item=wstd:stats_center,quantity=0}] wstd:stats_center 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 进度中心 ---
give @a[hasitem={item=wstd:advancement_center,quantity=0}] wstd:advancement_center 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 设置中心 ---
give @a[hasitem={item=wstd:setting_center,quantity=0}] wstd:setting_center 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 烟花教程 ---
# 当完成主线后给予
execute if score progress.mapStage record matches 1.. run give @a[hasitem={item=wstd:firework_tutorial,quantity=0}] wstd:firework_tutorial 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 播放音乐 ---
give @a[hasitem={item=wstd:play_music,quantity=0}] wstd:play_music 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# --- 游玩时间 ---
# 当完成主线后给予
execute if score progress.mapStage record matches 1.. run give @a[hasitem={item=wstd:played_time,quantity=0}] wstd:played_time 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
