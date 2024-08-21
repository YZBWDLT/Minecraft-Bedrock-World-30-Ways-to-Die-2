# ===== 剧情线 =====
# 仅限在lib/function_lists/dialogue注册后，且启用剧情线后执行

# --- 如何游玩 ---
# 当剧情线状态为 6 时执行
execute if score dialogue active matches 6 run function halls/settings/about/events/dialogue_how_to_play
