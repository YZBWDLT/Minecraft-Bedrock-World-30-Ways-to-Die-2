# ===== 返回大厅 =====
# 仅限玩家从大厅进入到地图玩法动画时使用

## 传送玩家
tp @a 27 9 30 facing 23 9 30

## 调用大厅的通用函数（该函数不传送玩家，也不会播放标题）
function halls/hub/main/start_general

## 移除制作人动画的特殊分值
scoreboard players reset settingCenter.enteredFromMainhall data
scoreboard players reset settingCenter.howToPlayAnimation data
