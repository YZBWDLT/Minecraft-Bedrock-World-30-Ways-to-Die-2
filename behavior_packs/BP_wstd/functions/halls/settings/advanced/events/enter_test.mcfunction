# ===== 玩家进入检测 =====
# 当玩家进入粒子位置后，则触发某些函数

# --- 高级设置 ---

## 权限等级设置
execute as @a[x=-98,y=19,z=49,r=1] run function halls/settings/advanced/functions/oplevel

## 更改游戏模式 | 仅限权限等级大于等于1时执行
execute if score oplevel settings matches 1.. as @a[x=-100,y=19,z=49,r=1] run function halls/settings/advanced/functions/change_to_creative_mode
execute if score oplevel settings matches 1.. as @a[x=-102,y=19,z=49,r=1] run function halls/settings/advanced/functions/change_to_adventure_mode

## 关卡完成延时设定
execute as @a[x=-104,y=19,z=49,r=1] run function halls/settings/advanced/functions/level_complete_delay

## gamerule锁定设定
execute as @a[x=-106,y=19,z=49,r=1] run function halls/settings/advanced/functions/gamerule_locker

## 重置地图
execute as @a[x=-108,y=19,z=49,r=1] run function halls/settings/advanced/functions/reset_map

# --- 开发者设置 ---

## 开发者模式设置
execute as @a[x=-98,y=19,z=43.5,r=1] run function halls/settings/advanced/functions/developer_mode

## 解锁关卡 | 仅限开发者模式启用后执行
execute if score developerMode settings matches 1 as @a[x=-100,y=19,z=43.5,r=1] run function halls/settings/advanced/functions/unlock_mainline
execute if score developerMode settings matches 1 as @a[x=-102,y=19,z=43.5,r=1] run function halls/settings/advanced/functions/unlock_easter_egg
execute if score developerMode settings matches 1 as @a[x=-104,y=19,z=43.5,r=1] run function halls/settings/advanced/functions/unlock_time_limited

## 解锁进度 | 仅限开发者模式启用后执行
execute if score developerMode settings matches 1 as @a[x=-106,y=19,z=43.5,r=1] run function halls/settings/advanced/functions/complete_advancements

## 重置地图记录 | 仅限开发者模式启用后执行
execute if score developerMode settings matches 1 as @a[x=-108,y=19,z=43.5,r=1] run function halls/settings/advanced/functions/reset_record
