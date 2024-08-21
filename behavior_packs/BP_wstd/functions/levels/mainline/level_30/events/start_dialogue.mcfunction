# ===== 开启对话 =====
# 若对话启用，则先默认开启对话

# --- 常规 ---

## 状态（时间线&剧情线） | 开启时间线和锁定视角的对话
function lib/modify_states/timeline/enable_pass_1
function lib/modify_states/dialogue/enable_lock_6

# --- 玩家 ---

## 清除玩家的物品
clear @a

# --- 特殊内容 ---

## 召唤作者NPC实体
summon wstd:creator -37 9 25 0 0 "become_lt"
## 显示作者进入游戏
tellraw @a {"rawtext":[{"translate":"chat.author_joined_game"}]}
## 指定玩家位置
tp @e[name=playerPosition] -37 9 27
tp @e[name=facingPosition] -37 9 24
## 播放音效
function lib/modify_states/sound/random_orb_1
