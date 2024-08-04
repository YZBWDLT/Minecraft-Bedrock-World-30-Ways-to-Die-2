# ===== 退出关卡 =====

# --- 基本 ---

## 返回到大厅
function halls/settings/main/start_general

# --- 玩家 ---

## 将游戏模式调整回去
execute if score developerMode settings matches 0 run gamemode adventure @a
execute if score developerMode settings matches 1 run gamemode creative @a
