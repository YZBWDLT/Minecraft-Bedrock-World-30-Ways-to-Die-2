# ===== 粒子效果 =====
# 该命令需每秒执行一次

# --- 关卡 ---

## 第1关
execute if score progress.timeLimited record matches 0..5 run particle wstd:orange -56 8 9
execute if score progress.timeLimited record matches -1 run particle wstd:gray -56 8 9
particle wstd:zero -55.3 11.2 9.9
particle wstd:one -55.7 11.2 9.9

## 第2关
execute if score progress.timeLimited record matches 1..5 run particle wstd:orange -60 8 9
execute if score progress.timeLimited record matches -1..0 run particle wstd:gray -60 8 9
particle wstd:zero -59.3 11.2 9.9
execute if score isNetease data matches 0 run particle wstd:two -59.7 11.2 9.9
execute if score isNetease data matches 1 run particle wstd:two_netease -59.7 11.2 9.9

## 第3关
execute if score progress.timeLimited record matches 2..5 run particle wstd:orange -56 8 1
execute if score progress.timeLimited record matches -1..1 run particle wstd:gray -56 8 1
particle wstd:zero -55.7 11.2 1.1
particle wstd:three -55.3 11.2 1.1

## 第4关
execute if score progress.timeLimited record matches 3..5 run particle wstd:orange -60 8 1
execute if score progress.timeLimited record matches -1..2 run particle wstd:gray -60 8 1
particle wstd:zero -59.7 11.2 1.1
particle wstd:four -59.3 11.2 1.1

## 第5关
execute if score progress.timeLimited record matches 4..5 run particle wstd:orange -64 8 5
execute if score progress.timeLimited record matches -1..3 run particle wstd:gray -64 8 5
particle wstd:zero -63.9 11.2 5.7
particle wstd:five -63.9 11.2 5.3
