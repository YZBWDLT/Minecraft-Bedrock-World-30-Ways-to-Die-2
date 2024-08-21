# ===== 退出大厅 =====

# --- 通用 ---

## 标记玩家已完成主线
scoreboard players set progress.mapStage record 1

## 回到大厅
function halls/hub/main/start_general

## 传送玩家
tp @a -40 10 27 facing -51 10 27

# --- 特殊内容 ---

## 重新向玩家开放大厅
fill -31 0 29 -31 0 25 air
fill -31 0 25 -39 0 25 air
fill -31 0 29 -39 0 29 air
