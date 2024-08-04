# ===== 开始大厅 =====

# --- 基本 ---

## 调用本大厅基础函数
function halls/record/stats/start_general

# --- 玩家 ---

## 传送玩家
tp @a -100 20 30 facing -95 20 30

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.stats_center"}]}
execute if score isNetease data matches 0 run titleraw @a subtitle {"rawtext":[{"translate":"subtitle.stats_center"}]}
execute if score isNetease data matches 1 run titleraw @a subtitle {"rawtext":[{"translate":"netease.subtitle.stats_center"}]}
