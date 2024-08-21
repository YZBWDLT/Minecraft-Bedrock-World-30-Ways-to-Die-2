# ===== 开始大厅 =====

# --- 基本 ---

## 调用本大厅基础函数
function halls/settings/firework/start_general

# --- 玩家 ---

## 传送玩家
tp @a 13 22 -22 facing 6 22 -29

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"§1"}]}
titleraw @a subtitle {"rawtext":[{"translate":"actionbar.setting_center.firework_settings"}]}

