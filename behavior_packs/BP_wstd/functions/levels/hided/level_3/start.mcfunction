# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 35

## 通用函数
function lib/modify_data/level/start

## 状态（时间线&剧情线） | 通用函数要求：需将本命令延后于通用函数执行
function lib/modify_states/timeline/enable_6

## 重置关卡房间
structure load hided:level_3 -91 20 105

# --- 玩家 ---

## 传送玩家
tp @a -75 22 122

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.hided_3"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.hided_3"}]}

# --- 特殊内容 ---

## 提醒玩家
tellraw @a {"rawtext":[{"translate":"chat.level.hided_3"}]}
## 物品检测
scoreboard players set hided3.itemTestCraftingTable active 1
scoreboard players set hided3.itemTestFurnace active 1
scoreboard players set hided3.itemTestBrewingStand active 1
scoreboard players set hided3.itemTestWoodenPickaxe active 1
scoreboard players set hided3.itemTestStonePickaxe active 1
## 展示文本
execute if score language settings matches 0 run function levels/hided/level_3/text_display/chinese
execute if score language settings matches 1 run function levels/hided/level_3/text_display/english
