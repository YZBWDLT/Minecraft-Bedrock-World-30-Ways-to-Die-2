# 启动与重启函数

## ===== 通用命令 =====

## 启用时间线
function system/enable_timeline_without_flowing

## 移除其他物品
execute @e[name=developerMode,scores={settings=0}] ~~~ clear @a

## 加载关卡&播放音效
scoreboard players set @e[name=diyIsLoading] backend 105
scoreboard players set @e[name=soundPlayer] active 11

## ===== 游戏模式进入的情况 =====

## ===== 编辑模式进入的情况 =====

## 设置步骤数为1并显示展示文本
execute @e[name=diyEditMode,scores={backend=1}] ~~~ scoreboard players set @e[name=counter] backend 1

## 设置房间大小为2（以便下一次使用时变为0）
execute @e[name=diyEditMode,scores={backend=1}] ~~~ scoreboard players set @e[name=diyRoomSize] backend 2