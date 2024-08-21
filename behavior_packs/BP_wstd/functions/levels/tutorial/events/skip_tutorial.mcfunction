# ===== 跳过教程 =====
# 仅限在玩过一次后执行

# --- 传送玩家 ---
tp @a[x=49,y=21,z=-29,r=0.75] 45 22 -25

# --- 播放音效 ---
function lib/modify_states/sound/random_pop

# --- 触发本关卡结束 ---
function levels/tutorial/complete
