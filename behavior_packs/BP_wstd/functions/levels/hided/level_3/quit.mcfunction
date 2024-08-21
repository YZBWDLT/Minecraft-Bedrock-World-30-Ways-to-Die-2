# ===== 退出关卡 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable

## 调用通用函数
function lib/modify_data/level/quit

# --- 特殊内容 ---

## 停用物品检测
scoreboard players reset hided3.itemTestCraftingTable active
scoreboard players reset hided3.itemTestFurnace active
scoreboard players reset hided3.itemTestBrewingStand active
scoreboard players reset hided3.itemTestWoodenPickaxe active
scoreboard players reset hided3.itemTestStonePickaxe active
