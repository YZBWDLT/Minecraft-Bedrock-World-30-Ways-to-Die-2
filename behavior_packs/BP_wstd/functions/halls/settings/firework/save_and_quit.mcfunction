# ===== 保存并退出 =====

# --- 基本 ---

## 返回到大厅
function halls/settings/main/start_general

# --- 特殊内容 ---

## 提示玩家
tellraw @a {"rawtext":[{"translate":"chat.settings.firework_settings.saved"}]}

## 保存结构
structure save firework_dispenser 10 22 -25 10 22 -25 disk
