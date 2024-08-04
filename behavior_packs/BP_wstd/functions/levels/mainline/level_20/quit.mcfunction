# ===== 退出关卡 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable
function lib/modify_states/level_complete_delay/disable

## 调用通用函数
function lib/modify_data/level/quit

# --- 特殊内容 ---

## 停用物品检测
scoreboard players reset level20.itemTestCraftingTable active
scoreboard players reset level20.itemTestBrewingStand active
scoreboard players reset level20.itemTestWaterBucket active
