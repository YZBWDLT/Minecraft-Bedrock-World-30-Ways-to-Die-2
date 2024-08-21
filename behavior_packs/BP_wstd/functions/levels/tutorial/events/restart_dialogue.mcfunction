# ===== 重启对话 =====
# 在第一阶段，检测到玩家有按钮就立刻跳转到282刻，防止夜长梦多

function lib/modify_states/dialogue/enable_1_keep
function lib/modify_states/timeline/enable_pass_1_keep
scoreboard players set dialogue time 282
scoreboard players set timeline time 282
