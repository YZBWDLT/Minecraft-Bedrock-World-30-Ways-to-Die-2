# ===== 物品供应器 =====
# 用于给予玩家必要物品

# 调用此方法时：
# · 执行者为玩家
# · 执行位置任意
# 输出结果：
# · 按照不同的data.level值给予玩家物品

# --- 清除物品 ---
function lib/modify_data/item/clear

# --- 给予物品 ---

## -14 | 烟花教程 | 必要物品：下一步、返回、退出关卡
execute if score level data matches -14 run give @s[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
execute if score level data matches -14 run give @s[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
execute if score level data matches -14 run give @s[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

## -12~-10 | 设置统计与进度中心 | 必要物品：返回
execute if score level data matches -12..-10 run give @s[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

## -9~-4 | 子设置项 | 必要物品：返回
execute if score level data matches -9..-4 run give @s[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

## -5 | 烟花设置 | 必要物品：下一步、返回（已在上面给予）、重置
execute if score level data matches -5 run give @s[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
execute if score level data matches -5 run give @s[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

## -3~-1 | 三大子大厅 | 必要物品：返回、播放音乐、下一步（仅自定义关卡大厅）
execute if score level data matches -3..-1 run give @s[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
execute if score level data matches -3..-1 run give @s[hasitem={item=wstd:play_music,quantity=0}] wstd:play_music 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
execute if score level data matches -1 run give @s[hasitem={item=wstd:next_step,quantity=0}] wstd:next_step 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

## 0 | 大厅
## 彩蛋关卡 | 当发现彩蛋后给予
execute if score level data matches 0 if score progress.easterEgg record matches 0.. run give @s[hasitem={item=wstd:easter_egg_hall,quantity=0}] wstd:easter_egg_hall 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
## 限时关卡 | 当限时关卡解锁后给予
execute if score level data matches 0 if score progress.timeLimited record matches 0.. run give @s[hasitem={item=wstd:time_limited_hall,quantity=0}] wstd:time_limited_hall 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
## 自定义关卡 | 当完成主线后给予
execute if score level data matches 0 if score progress.mapStage record matches 1.. run give @s[hasitem={item=wstd:diy_hall,quantity=0}] wstd:diy_hall 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
## 统计中心 | 当完成主线后给予
execute if score level data matches 0 if score progress.mapStage record matches 1.. run give @s[hasitem={item=wstd:stats_center,quantity=0}] wstd:stats_center 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
## 进度中心
execute if score level data matches 0 run give @s[hasitem={item=wstd:advancement_center,quantity=0}] wstd:advancement_center 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
## 设置中心
execute if score level data matches 0 run give @s[hasitem={item=wstd:setting_center,quantity=0}] wstd:setting_center 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
## 烟花教程 | 当完成主线后给予
execute if score level data matches 0 if score progress.mapStage record matches 1.. run give @s[hasitem={item=wstd:firework_tutorial,quantity=0}] wstd:firework_tutorial 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
## 播放音乐
execute if score level data matches 0 run give @s[hasitem={item=wstd:play_music,quantity=0}] wstd:play_music 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
## 游玩时间 | 当完成主线后给予
execute if score level data matches 0 if score progress.mapStage record matches 1.. run give @s[hasitem={item=wstd:played_time,quantity=0}] wstd:played_time 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# 1~50 | 主线关卡、彩蛋关卡与限时关卡 | 必要物品：重置关卡、退出关卡
execute if score level data matches 1..50 run give @s[hasitem={item=wstd:reset,quantity=0}] wstd:reset 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
execute if score level data matches 1..50 run give @s[hasitem={item=wstd:quit,quantity=0}] wstd:quit 1 0 { "item_lock": { "mode": "lock_in_inventory" } }

# 所有关卡（除-20~-16，-13，-3~0外） | 给予播放音乐（物品栏第8位）
execute unless score level data matches -20..-16 unless score level data matches -13 unless score level data matches -3..0 run replaceitem entity @s[hasitem={item=wstd:play_music,quantity=0}] slot.inventory 8 wstd:play_music 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
