# ===== 启动&重启关卡 =====

# --- 基本 ---

## ID  | 通用函数要求：需将本命令提前于通用函数执行
scoreboard players set level data 30

# --- 特殊内容 ---

## 若玩家从大厅进入第30关，且对话启用时，则先默认开启对话
execute if score level30Dialogue settings matches 1..2 run function levels/mainline/level_30/events/start_dialogue
## 若玩家从大厅进入第30关，但对话启用时；或对话结束后，则开启关卡本体
execute if score level30Dialogue settings matches 0 run function levels/mainline/level_30/events/start_level
