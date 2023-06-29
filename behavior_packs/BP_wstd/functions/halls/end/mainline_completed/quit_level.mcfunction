## 重新开放关卡
fill -31 0 29 -31 0 25 air
fill -31 0 25 -39 0 25 air
fill -31 0 29 -39 0 29 air
## 标记完成主线
scoreboard players set @e[name=mapCompleted] stats 1
## ID=0
scoreboard players set @e[name=level] backend 0
## 停止计时
function system/disable_timeline
function system/functionality_items_controller
function halls/main_hall/text_display