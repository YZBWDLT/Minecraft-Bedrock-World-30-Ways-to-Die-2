# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 粒子设定 ---
# 每秒执行1次
execute if score tick time matches 0 run function halls/hub/main/events/particles

# --- 玩家进入检测 ---
# 用于判断玩家是否走进粒子光束中
function halls/hub/main/events/enter_test

# --- 结束特效的自动开启 ---

## 主线通关特效 | 完成30个关卡，但地图阶段为0时触发
execute if score progress.level record matches 30 if score progress.mapStage record matches 0 run function halls/end/stage_1/start
## 全进度通关特效 | 完成30个进度，但地图阶段为1时触发
execute if score progress.advancement record matches 30 if score progress.mapStage record matches 1 run function halls/end/stage_2/start

# --- 重置地图警告 ---
# 当重置警告倒计时启用（active.mainHall.resetMapWarningCountdown = 1）后执行
execute if score mainHall.resetMapWarningCountdown active matches 1 run function halls/hub/main/events/reset_map_countdown

# --- 第30关的音效 ---
# 仅当玩家第一次解锁第30关时才播放（record.progress.level=29 && settings.level30Dialogue=2，播放后自动调整为1）
execute if score progress.level record matches 29 if score level30Dialogue settings matches 2 run function lib/modify_states/sound/random_anvil_break
execute if score progress.level record matches 29 if score level30Dialogue settings matches 2 run scoreboard players set level30Dialogue settings 1
