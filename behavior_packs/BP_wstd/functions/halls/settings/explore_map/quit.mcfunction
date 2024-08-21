# ===== 退出关卡 =====

# --- 基本 ---

## 返回到大厅 | 非速通模式返回到关于此地图，速通模式返回到大厅
execute if score speedrunMode settings matches 0 run function halls/settings/about/start
execute if score speedrunMode settings matches 1 run function halls/settings/main/start

# --- 玩家 ---

## 将游戏模式调整回去
execute if score developerMode settings matches 0 run gamemode adventure @a
execute if score developerMode settings matches 1 run gamemode creative @a
