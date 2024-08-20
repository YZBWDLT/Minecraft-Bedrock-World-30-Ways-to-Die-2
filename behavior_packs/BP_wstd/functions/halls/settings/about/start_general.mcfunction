# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## ID 
scoreboard players set level data -9

## 通用函数
function lib/modify_data/hall_start

## 状态（时间线）
function lib/modify_states/timeline/enable_6
function lib/modify_states/dialogue/disable

## 显示展示文本
execute if score language data matches 0 run function halls/settings/about/text_display/chinese
execute if score language data matches 1 run function halls/settings/about/text_display/english

## 传送玩家
tp @a -97 20 46 facing -109 20 46

# --- 特殊内容 ---

## 复制展示框
clone -98 15 49 -109 15 43 -109 21 43
## 特殊分值检测
scoreboard players set settingCenter.creditsViewed data 0
scoreboard players set settingCenter.howToPlayAnimation data 0
scoreboard players set settingCenter.help data 0
## 给予返回物品
give @a[hasitem={item=wstd:back,quantity=0}] wstd:back 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
give @a[hasitem={item=wstd:play_music,quantity=0}] wstd:play_music 1 0 { "item_lock": { "mode": "lock_in_inventory" } }
