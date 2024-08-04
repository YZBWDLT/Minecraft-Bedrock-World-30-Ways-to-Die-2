# ===== 时间线 =====
# 仅限在lib/function_lists/timeline注册后，且启用时间线后执行

# --- 检测树是否被破坏 ---

## 检测部分
function levels/easter_egg/level_1/events/break_tree_test
## 检测到已被破坏后，启动时间线流逝和剧情线
execute if score easterEgg1.treeBlockBroken data matches 1 unless score timeline active matches 1 run function lib/modify_states/timeline/enable_pass_1
execute if score easterEgg1.treeBlockBroken data matches 1 unless score dialogue active matches 1 run function lib/modify_states/dialogue/enable_1

# --- 对话状态 ---

## [275] 播放爆炸音效与粒子
execute if score timeline active matches 1 if score timeline time matches 275 as @a at @s run playsound random.explode @s
execute if score timeline active matches 1 if score timeline time matches 275 run particle minecraft:huge_explosion_emitter -35 22 -25

## [280] 杀死玩家
execute if score timeline active matches 1 if score timeline time matches 280 run function levels/easter_egg/level_1/events/kill_player
