# ===== 启动&重启关卡 =====

# 自定义关卡下，玩家从大厅进入自定义关卡执行的是start_gaming/...的函数，先指定ID再执行本函数的命令。
# 启动关卡后，开始加载关卡的程序，此时编辑模式直接传送到命令区，游戏模式传送到等待区。

# --- 基本 ---

## 状态（时间线&剧情线） | 将时间线调整为模式 1 以启用加载关卡功能
function lib/modify_states/timeline/enable_pass_1

# --- 玩家 ---

## 玩家进入时，进行传送
execute if score diyLevels.isEditMode data matches 0 run tp @a 4 8 3
execute if score diyLevels.isEditMode data matches 1 run tp @a -107 2 -15

## 更改游戏模式
execute if score diyLevels.isEditMode data matches 0 run gamemode adventure @a
execute if score diyLevels.isEditMode data matches 1 run gamemode creative @a

## 移除玩家物品
clear @a

# --- 特殊内容 ---

## 播放音效
function lib/modify_states/sound/random_pop

## 特殊分值检测
scoreboard players set diyLevels.step data 1
scoreboard players set diyLevels.roomSize data 2
