# ===== 保存关卡时间线 =====
# [num]指代该模块命令将于第num刻开始执行

# --- [1] 调整玩家状态 ---

## 清除玩家的物品
execute if score timeline time matches 1 as @a run function lib/modify_data/item/clear
execute if score timeline time matches 1 as @a run clear @s ender_pearl

## 提示玩家
execute if score timeline time matches 1 as @a run tellraw @s {"rawtext":[{"translate":"chat.item.save_level.start_saving"}]}

# --- [2] 清除展示文本 ---

## 清除展示文本
execute if score timeline time matches 2 as @a run kill @e[type=wstd:text_display]

# --- [3] 保存结构 ---
# 维持60刻，给玩家的设备留些喘息空间

execute if score timeline time matches 3 as @a run function levels/diy_levels/events/save_level

# --- [23] 结构保存完成 ---

## 提示玩家已保存完毕
execute if score timeline time matches 23 as @a run tellraw @s {"rawtext":[{"translate":"chat.item.save_level.completed"}]}

## 重新给予物品等
execute if score timeline time matches 23 as @a run function levels/diy_levels/events/start_editing
