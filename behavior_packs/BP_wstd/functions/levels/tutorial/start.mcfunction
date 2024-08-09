# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID
scoreboard players set level data -18

## 状态（时间线&剧情线）
function lib/modify_states/timeline/enable_pass_1
function lib/modify_states/dialogue/enable_1

## 重置关卡房间
structure load tutorial:room 40 20 -30
structure load tutorial:red_block 44 21 -29

# --- 玩家 ---

## 传送玩家
tp @a 45 22 -25 180 0

# --- 特殊内容 ---

## 开始播放音乐
function lib/modify_states/music/maingame
## 展示文本
execute if score language data matches 0 run function levels/tutorial/text_display/chinese
execute if score language data matches 1 run function levels/tutorial/text_display/english
