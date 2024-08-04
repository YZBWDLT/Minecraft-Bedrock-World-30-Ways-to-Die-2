# ===== 退出关卡 =====

# --- 基本 ---

## 状态
## (是否禁用时间线？举例：function lib/modify_states/timeline/disable
## (是否禁用剧情线？举例：function lib/modify_states/dialogue/disable
## (是否禁用关卡延迟？举例：function lib/modify_states/level_complete_delay/disable

## 调用通用函数
function lib/modify_data/level/quit

# --- 特殊内容 ---
# (若关卡在start中使用了特别的变量、gamerule等，需将其归回默认值

## 重置gamerule
## (设置停用关卡独有的gamerule，举例：gamerule showdeathmessages false
## 停用特殊分值
## (设置停用关卡独有的功能检测，举例：scoreboard players reset level7.enteredNether data
## 停用物品检测
## (设置停用物品检测？举例：scoreboard players reset level9.itemTestCraftingTable active

# --- 限时关卡 ---

## 恢复音乐 | 设定条件以防止音乐在退出后重新播放
execute if score speedrunMode settings matches 0 run function lib/modify_states/music/maingame
