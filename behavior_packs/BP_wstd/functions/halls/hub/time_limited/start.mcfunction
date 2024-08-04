# ===== 开始大厅 =====

# --- 基本 ---

## 调用本大厅基础函数
function halls/hub/time_limited/start_general

# --- 玩家 ---

## 传送玩家
tp @a -55 10 5 facing -62 10 5

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.time_limited_hall"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.time_limited_hall"}]}

