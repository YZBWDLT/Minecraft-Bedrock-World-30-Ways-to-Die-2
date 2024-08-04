# ===== 启动&重启关卡 =====

# 一些补充：自定义关卡下，玩家从大厅进入自定义关卡执行的是start_gaming/...的函数，先指定ID再执行本函数的命令。

# --- 基本 ---

## 状态（时间线&剧情线） | 启用加载关卡功能
function lib/modify_states/timeline/enable_pass_1

# --- 玩家 ---

## 移除玩家物品
clear @a

# --- 特殊内容 ---

## 播放音效
function lib/modify_states/sound/random_pop

## 特殊分值检测
scoreboard players set diyLevels.step data 1
scoreboard players set diyLevels.roomSize data 2
