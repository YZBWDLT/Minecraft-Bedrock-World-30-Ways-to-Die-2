# 所有进度结束后，触发最终结束特效

# ===== 设置关卡ID =====
scoreboard players set @e[name=level] backend -13

# ===== 读取大厅logo =====
structure load logo 47 6 21

# ===== 清理玩家的物品 =====
clear @a

# ===== 清空多余实体 =====
kill @e[type=!player,family=!marker,type=!ender_dragon]

# ===== 启动时间线 =====
function system/enable_timeline_without_flowing


# ===== 生成作者 =====
summon wstd:creator -46 9 27 become_lt
tellraw @a { "rawtext": [ { "translate": "chat.level_30.dialogue.line1" } ] }

# ===== 复原地板 =====
fill -44 8 29 -48 8 25 iron_block

# ===== 烟花准备工作 =====
function halls/end/advancements_completed/firework_ready

# ===== 网易音乐控制器，防止音乐提前播放 =====
scoreboard players set @e[name=playsoundInterval] time 2