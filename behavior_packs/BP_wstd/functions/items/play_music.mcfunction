# 播放音乐物品

## 可能播放限时音乐的场景：限时关卡、彩蛋第8关、自定义关卡的限时关卡（游戏模式）
## 其余情况全部播放普通音乐

## 先播放普通音乐，符合下列条件的立即播放限时音乐
function system/music/play_maingame

execute @e[name=level,scores={backend=36..40}] ~~~ function system/music/play_timelimit
execute @e[name=level,scores={backend=48}] ~~~ function system/music/play_timelimit
execute @e[name=level,scores={backend=51..60}] ~~~ execute @e[name=diyEditMode,scores={backend=0}] ~~~ execute @e[name=remainingTime,scores={time=0..}] ~~~ function system/music/play_timelimit