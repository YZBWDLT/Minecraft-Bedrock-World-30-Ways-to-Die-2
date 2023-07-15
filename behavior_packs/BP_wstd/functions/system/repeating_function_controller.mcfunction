# 循环函数控制器

# === 关卡类 ===
## 快捷栏标题控制器
function system/actionbar_title_controller
## 关卡结束检测器
function system/level_complete_controller
## 关卡时间线控制器 | active.timeline >= 1 时执行，但只有active.timeline == 1 时会添加分数
execute @e[name=timeline,scores={active=1..}] ~~~ function system/timeline_controller
## 跨维度传送控制器
function system/teleport_controller
## 关卡解锁器
function system/level_unlocker

# === 后台类 ===
## 杂项后台
function system/backends
## 反作弊系统 | 不为开发者模式时运行 | 开发者模式下记通关时间为-1
execute @e[name=developerMode,scores={settings=0}] ~~~ function system/anti_cheating
execute @e[name=developerMode,scores={settings=1}] ~~~ scoreboard players set @e[name=endTimeTick] stats -1
## 关卡ID校正
function system/level_id_tester
## 音效播放器 | 为了解决函数瞬时传送导致的音效无法听到的问题
function system/sound_player
## 维度检测器
execute @a ~~~ function system/dimension_tester
## 游玩时长记录
function system/time_played_recorder
## 进度检测器
execute @e[name=advancement,scores={stats=0..30}] ~~~ function system/advancement_tester
## 重置地图检测器
execute @a[x=3,y=8,z=6,dx=2,dy=2,dz=2] ~~~ function init/data_init
execute @a[x=3,y=8,z=6,dx=2,dy=2,dz=2] ~~~ tp @a 31 10 27 facing 23 10 27
## 网易音乐播放控制器
execute @e[name=level,scores={backend=!-20..-19}] ~~~ execute @e[name=isNetease,scores={settings=1}] ~~~ execute @e[name=ticker,scores={time=0}] ~~~ function system/music/netease_music_controller
## 物品使用控制器
execute @a[scores={itemUsed=!-1}] ~~~ function system/item_used_controller

# === 设置类 ===
## 游戏规则设定，每1秒设定1次
execute @e[name=ticker,scores={time=0}] ~~~ function system/gamerule_controller
## 地图时间控制器 | 不为结束特效时启用
execute @e[name=ticker,scores={time=0}] ~~~ execute @e[name=level,scores={backend=!-13}] ~~~ function system/map_time_controller

# === 开发者模式 ===
## 游戏模式切换器
execute @e[name=developerMode,scores={settings=1}] ~~~ function system/gamemode_switcher