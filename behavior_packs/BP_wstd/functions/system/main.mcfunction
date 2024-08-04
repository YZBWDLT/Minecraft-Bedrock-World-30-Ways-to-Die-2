# ===== 主函数 =====

# --- 计时器 ---

function system/timer

# --- 控制器类 ---

## 快捷栏标题控制器
function system/controller/actionbar_title

## 进度控制器 | 仅当进度检测处于激活状态（非开幕、非结束）时检测 | 因涉及通关检测，以及关卡是否使用了跳过等检测，因此需要先于关卡结束检测器执行检测
execute if score progress.advancement record matches 0..29 run function system/controller/advancement

## 关卡结束检测器
function system/controller/level_complete

## 关卡时间线控制器 | 仅当active.timeline >= 1 时执行
execute if score timeline active matches 1.. run function system/controller/timeline

## 关卡剧情线控制器 | 仅当active.dialogue >= 1 时执行
execute if score dialogue active matches 1.. run function system/controller/dialogue

## 音效播放器 | 仅当active.sound >= 1 时执行
execute if score sound active matches 1.. run function system/controller/sounds

## 地图事件控制器
function system/controller/events

## 游戏规则控制器 | 仅当游戏规则处于激活状态时控制 | 每秒执行1次
execute if score gameruleLock settings matches 1 if score tick time matches 4 run function system/controller/gamerule

# --- 反作弊与反退出系统 ---

## 反作弊系统
function system/anticheating

## 反退出系统
function system/antileave
