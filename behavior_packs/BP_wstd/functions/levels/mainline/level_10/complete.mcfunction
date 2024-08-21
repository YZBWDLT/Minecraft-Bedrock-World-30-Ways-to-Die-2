# ===== 关卡完成 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable
function lib/modify_states/dialogue/disable
function lib/modify_states/level_complete_delay/disable

## 解锁下一关 | 通用函数要求该部分必须在通用函数之前执行
execute if score progress.level record matches 9 run scoreboard players set progress.level record 10

## 通用函数
function lib/modify_data/level/complete

## 自定义死亡消息
execute as @a run tellraw @s {"rawtext":[{"translate":"chat.deathmessage.level_10","with":{"rawtext":[{"selector":"@s"}]}}]}

# --- 下一关 ---

## 传送玩家到下一关
tp @a -21 10 27 facing -21 10 30

# --- 特殊内容 ---

## 停用物品检测
scoreboard players reset level10.itemTestBlackBed active
scoreboard players reset level10.itemTestBrownBed active
scoreboard players reset level10.itemTestGrayBed active
scoreboard players reset level10.itemTestLightGrayBed active
scoreboard players reset level10.itemTestPinkBed active
scoreboard players reset level10.itemTestWhiteBed active
