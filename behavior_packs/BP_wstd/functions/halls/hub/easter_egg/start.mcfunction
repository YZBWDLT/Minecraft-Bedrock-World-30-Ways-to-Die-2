# ===== 开始大厅 =====

# --- 基本 ---


## 调用本大厅基础函数
function halls/hub/easter_egg/start_general

# --- 玩家 ---

## 传送玩家
tp @a -22 10 5 facing -40 10 5

## 标题&副标题 | 通用函数要求：需将本命令延后于通用函数执行
titleraw @a title {"rawtext":[{"translate":"title.easter_egg_hall"}]}
titleraw @a subtitle {"rawtext":[{"translate":"subtitle.easter_egg_hall"}]}
