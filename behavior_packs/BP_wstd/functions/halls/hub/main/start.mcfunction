# ===== 开始大厅 =====

# --- 基本 ---

## 调用本大厅基础函数
function halls/hub/main/start_general

# --- 玩家 ---

## 传送玩家
tp @a 27 10 27 facing 0 10 27

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.hall"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.hall"}]}
