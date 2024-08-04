# ===== 退出关卡 =====

# --- 基本 ---

## 状态
function lib/modify_states/timeline/disable
function lib/modify_states/dialogue/disable
function lib/modify_states/level_complete_delay/disable

## 调用通用函数
execute in overworld run function lib/modify_data/level/quit

# --- 特殊内容 ---

## 停用物品检测
scoreboard players reset level10.itemTestBlackBed active
scoreboard players reset level10.itemTestBrownBed active
scoreboard players reset level10.itemTestGrayBed active
scoreboard players reset level10.itemTestLightGrayBed active
scoreboard players reset level10.itemTestPinkBed active
scoreboard players reset level10.itemTestWhiteBed active
