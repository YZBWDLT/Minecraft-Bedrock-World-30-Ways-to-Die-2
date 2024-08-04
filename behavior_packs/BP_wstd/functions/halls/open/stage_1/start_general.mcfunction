# ===== 开始大厅 =====
# 去除了传送、标题、通用函数等，仅保留ID、展示文本和刷新记分板的基础版开始大厅函数
# 这是为了完成关卡后的一些需要而特意设定的

# --- 基本 ---

## 重置所有地图数据
function lib/modify_data/init/data

## 重置所有地图结构
function lib/modify_data/init/map

## 重置所有游戏规则
function lib/modify_data/init/gamerule

## 重置记分板
function lib/modify_data/init/scoreboard
scoreboard objectives setdisplay sidebar

## 启用时间线
function lib/modify_states/timeline/enable_6

# --- 玩家 ---

## 更改游戏模式
gamemode adventure @a
## 清除玩家的物品
clear @a

# --- 世界 ---

## 清除多余实体
kill @e[type=!player,family=!marker,type=!ender_dragon]

## 停止所有音效与音乐
music stop 1
stopsound @a
